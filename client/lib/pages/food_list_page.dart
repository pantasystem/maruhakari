import 'dart:developer';

import 'package:client/bluetooth/connected_iot_bluetooth_data_streaming.dart';
import 'package:client/constants.dart';
import 'package:client/pages/components/food_card.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/schema/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_blue_plus/flutter_blue_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';


class FoodListPage extends ConsumerStatefulWidget {
  const FoodListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return FooListPageState();
  }
}

class FooListPageState extends ConsumerState {

  late ConnectedIoTBluetoothDataStreaming _connectedIoTBluetoothDataStreaming;
  @override
  void initState() {
    _connectedIoTBluetoothDataStreaming = ConnectedIoTBluetoothDataStreaming();
    ref.read(deviceRepository).getOwnDevices().then((value) {
      log("getOwnDevices: $value");
      FlutterBluePlus.instance.startScan();
      _connectedIoTBluetoothDataStreaming.currentWeightEventStream(value).listen((event) {
        ref.read(foodRepository).createHistoryForApp(nfcUuid: event.nfcUid, weight: event.weight, macAddress: event.deviceMacAddress);
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _connectedIoTBluetoothDataStreaming.dispose();
    FlutterBluePlus.instance.stopScan();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final foods = ref.watch(myFoodsPollingStreamProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("調味料一覧"),
        actions: [
          IconButton(onPressed: () {
            GoRouter.of(context).push("/devices");
          }, icon: const Icon(Icons.device_hub)),
          IconButton(
              onPressed: () {
                GoRouter.of(context).push("/account");
              },
              icon: const Icon(Icons.account_circle),
          ),
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