import 'package:client/generated/proto/food.pb.dart';
import 'package:client/pages/components/food_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
    return Scaffold(
        appBar: AppBar(
          title: const Text("調味料一覧"),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.account_circle))
          ],
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: 8
              ),
              child: Text(
                  "残量が少ない",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 65,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "スーパーマヨネーズ",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 100,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 575,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 575,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 500,
                      gramPerMilliliter: 1,
                      name: "ラー油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 200,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: 8
              ),
              child: Text(
                "ほとんど使われていない",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 65,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "スーパーマヨネーズ",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 100,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 575,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 575,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 500,
                      gramPerMilliliter: 1,
                      name: "ラー油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 200,
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                top: 16,
                left: 16,
                right: 16,
                bottom: 8
              ),
              child: Text(
                "全て",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              child: GridView(
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 180,
                ),
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 65,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "スーパーマヨネーズ",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 100,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 575,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 750,
                      gramPerMilliliter: 1,
                      name: "醤油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 575,
                    ),
                  ),
                  FoodCard(
                    food: Food(
                      id: "id",
                      containerWeightGram: 25,
                      containerMaxWeightGram: 500,
                      gramPerMilliliter: 1,
                      name: "ラー油",
                      accountId: "account",
                      nfcUid: "nfc-id",
                      rawWeightGram: 600,
                      weightGram: 200,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){},
      ),
    );
  }
}
