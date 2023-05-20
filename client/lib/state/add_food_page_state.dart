
import 'package:client/pages/add_food/add_food_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodPageNotifier extends ChangeNotifier {

  AddFoodSectionType section = AddFoodSectionType.pasteNfc;


}

enum AddFoodSectionType {
  pasteNfc,
  scanNfc,
  selectFood,
  inputFoodInfo,
  selectContainerType,
  inputContainerInfo,
  confirmation
}

final addFoodPageNotifierProvider = ChangeNotifierProvider((ref) {
  return AddFoodPageNotifier();
});
