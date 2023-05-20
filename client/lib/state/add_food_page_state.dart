
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
