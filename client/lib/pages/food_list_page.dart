import 'dart:developer';

import 'package:client/pages/components/food_card.dart';
import 'package:client/providers/repositories.dart';
import 'package:client/schema/food.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class FoodListPage extends ConsumerStatefulWidget {
  const FoodListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends ConsumerState {
  @override
  Widget build(BuildContext context) {
    final foods = ref.watch(myFoodsFutureProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text("調味料一覧"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_circle))
        ],
      ),
      body: foods.when(
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
                return FoodCard(food: myFoods.lowWeightFoods[index]);
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
                return FoodCard(food: (myFoods.unusedFoods)[index]);
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
              return FoodCard(food: myFoods.foods[index]);
            },
          ),
        )
      ],
    );
  }
}

final myFoodsFutureProvider = FutureProvider((ref) {
  return ref.read(foodRepository).getMyFoods();
});
