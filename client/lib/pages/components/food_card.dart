import 'package:client/schema/food.dart';
import 'package:flutter/material.dart';

typedef OnSelected = void Function(Food food);
class FoodCard extends StatelessWidget {
  const FoodCard({super.key, required this.food, required this.onSelected});

  final Food food;
  final OnSelected onSelected;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      food.name,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            "${((food.weightGram / food.containerMaxWeightGram) * 100).round()}%",
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                            child: Text(
                              "${food.weightGram}g",
                              textAlign: TextAlign.center,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            LinearProgressIndicator(
              value: food.weightGram / food.containerMaxWeightGram,
              color: () {
                if ((food.weightGram / food.containerMaxWeightGram) <= 0.1) {
                  return Colors.red;
                } else {
                  return Colors.green;
                }
              }(),
              backgroundColor: () {
                if ((food.weightGram / food.containerMaxWeightGram) <= 0.1) {
                  return Colors.red.shade200;
                } else {
                  return Colors.green.shade200;
                }
              }(),

            )
          ],
        ),
        onTap: () {
          onSelected(food);
        },
      )
    );
  }
}
