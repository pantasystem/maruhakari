import 'dart:convert';
import 'dart:developer';

import 'package:client/BluetoothConstants.dart';
import 'package:client/constants.dart';
import 'package:client/pages/components/food_card.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/schema/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:collection/collection.dart';

class FoodListPage extends ConsumerStatefulWidget {
  const FoodListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends ConsumerState {

  @override
  void initState() {

    FlutterBluePlus.instance.startScan(timeout: const Duration(seconds: 10));
    fetchBluetoothCurrentValue();
    super.initState();
  }

  void fetchBluetoothCurrentValue() async {
    final Set<String> listeningDeviceIds = {};
    void listenWeightAndNfcUid(BluetoothDevice device) async {
      if (listeningDeviceIds.contains(device.id.id)) {
        return;
      }
      listeningDeviceIds.add(device.id.id);
      final services = await device.discoverServices();
      final service = services.firstWhereOrNull((element) => element.uuid.toString() == BluetoothConstants.serviceUuid);
      final state = await device.state.first;
      switch(state) {
        case BluetoothDeviceState.disconnected:
          await device.connect();
          break;
        case BluetoothDeviceState.connecting:
          break;
        case BluetoothDeviceState.connected:
          break;
        case BluetoothDeviceState.disconnecting:
          await device.connect();
          break;
      }
      await device.requestMtu(500);
      final c = service?.characteristics.firstWhereOrNull((element) => element.uuid.toString() == BluetoothConstants.currentNfcAndWeightCharacteristicUuid);
      c?.setNotifyValue(true);
      if (c == null) {
        log("characteristic is null");
        listeningDeviceIds.remove(device.id.id);
        return;
      }
      c.onValueChangedStream.listen((event) {
        final json = String.fromCharCodes(event);
          final map = jsonDecode(json) as Map<String, dynamic>;
          final weight = map["weight"] as double;
          final nfcUid = map["nfc_uid"] as String;
          ref.read(foodRepository).createHistoryForApp(nfcUuid: nfcUid, weight: weight);
      });
    }

    final Map<String, BluetoothDevice> map = {};
    final devices = await FlutterBluePlus.instance.connectedDevices;
    for (var element in devices) {
      final services = await element.discoverServices();
      if (services.any((element) => element.uuid.toString() == BluetoothConstants.serviceUuid)) {
        map[element.id.id.toString()] = element;
        listenWeightAndNfcUid(element);
      }
    }

    await for (final event in FlutterBluePlus.instance.scanResults) {
      for (var element in event) {
        if (element.advertisementData.serviceUuids.contains(BluetoothConstants.serviceUuid)) {
          if (map.containsKey(element.device.id.id)) {
            continue;
          }
          map[element.device.id.id] = element.device;
          listenWeightAndNfcUid(element.device);
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final foods = ref.watch(myFoodsPollingStreamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("調味料一覧"),
        actions: [
          IconButton(
              onPressed: () {
                GoRouter.of(context).push("/account");
              },
              icon: const Icon(Icons.account_circle))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(myFoodsPollingStreamProvider.future);
        },
        child: foods.when(
          data: (data) {
            return MyFoodsListView(myFoods: data);
          },
          error: (e, st) {
            log('myFoodsの読み込みに失敗', error: e, stackTrace: st);
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [Text("読み込みに失敗しました")],
              ),
            );
          },
          loading: () {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [CircularProgressIndicator()],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: const Icon(Icons.add_to_home_screen),
                    title: const Text("デバイスを追加"),
                    onTap: () {
                      GoRouter.of(context).push("/add-device");
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.playlist_add_outlined),
                    title: const Text("調味料を追加"),
                    onTap: () {
                      GoRouter.of(context).push("/add-food");
                    },
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}

class MyFoodsListView extends StatelessWidget {
  const MyFoodsListView({super.key, required this.myFoods});

  final MyFoodsResponse myFoods;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        if (myFoods.lowWeightFoods.isNotEmpty) ...[
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
            child: Text(
              "残量が少ない",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: myFoods.lowWeightFoods.length,
              itemBuilder: (BuildContext context, int index) {
                return FoodCard(
                  food: myFoods.lowWeightFoods[index],
                  onSelected: (food) {
                    GoRouter.of(context).push("/foods/${food.id}");
                  },
                );
              },
            ),
          ),
        ],
        if (myFoods.unusedFoods.isNotEmpty) ...[
          const Padding(
            padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
            child: Text(
              "ほとんど使われていない",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 180,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: myFoods.unusedFoods.length,
              itemBuilder: (BuildContext context, int index) {
                return FoodCard(
                  food: (myFoods.unusedFoods)[index],
                  onSelected: (food) {
                    GoRouter.of(context).push("/foods/${food.id}");
                  },
                );
              },
            ),
          ),
        ],
        const Padding(
          padding: EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 8),
          child: Text(
            "全て",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 180,
            ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: myFoods.foods.length,
            itemBuilder: (BuildContext context, int index) {
              return FoodCard(
                food: myFoods.foods[index],
                onSelected: (food) {
                  GoRouter.of(context).push("/foods/${food.id}");
                },
              );
            },
          ),
        )
      ],
    );
  }
}


final myFoodsPollingStreamProvider = StreamProvider.autoDispose((ref) async* {
  var enabled = true;
  ref.onDispose(() {
    enabled = false;
  });
  for (;enabled;) {
    yield await ref.read(foodRepository).getMyFoods();
    await Future<void>.delayed(const Duration(seconds: AppConstants.pollingIntervalSeconds));
  }
});