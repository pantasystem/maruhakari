
import 'package:client/schema/food_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodPageNotifier extends ChangeNotifier {

  AddFoodSectionType section = AddFoodSectionType.pasteNfc;
  String? name;
  String? nfcUid;
  double? containerWeightGram;
  double? containerMaxWeightGram;
  double? gramPerMilliliter;


  void goToScanNfcSection() {
    section = AddFoodSectionType.scanNfc;
    notifyListeners();
  }

  void goToSelectContainerSection() {
    section = AddFoodSectionType.selectContainerType;
    notifyListeners();
  }

  void setNfcUid(String id) {
    nfcUid = id;
    section = AddFoodSectionType.selectFood;
    notifyListeners();
  }

  void setFoodInfoByTemplate(FoodTemplate template) {
    name = template.name;
    gramPerMilliliter = template.gramPerMiller;
    notifyListeners();
  }

  bool validateFoodInfo() {
    return name != null && name?.isNotEmpty == true && gramPerMilliliter != null;
  }
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

final addFoodPageNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  return AddFoodPageNotifier();
});
