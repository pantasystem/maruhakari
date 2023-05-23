import 'package:client/providers/repositories.dart';
import 'package:client/repositories/food_repository.dart';
import 'package:client/schema/container_template.dart';
import 'package:client/schema/food_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddFoodPageNotifier extends ChangeNotifier {
  AddFoodPageNotifier(this._foodRepository);

  final FoodRepository _foodRepository;

  AddFoodSectionType section = AddFoodSectionType.pasteNfc;
  String? name;
  String? nfcUid;
  double? containerWeightGram;
  double? containerMaxWeightGram;
  double? gramPerMilliliter;

  FoodUnitType unitType = FoodUnitType.gram;
  ContainerTemplate? selectedContainer;

  List<AddFoodSectionType> _sectionStack = const [AddFoodSectionType.pasteNfc];

  void goToScanNfcSection() {
    section = AddFoodSectionType.scanNfc;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void goToSelectContainerSection() {
    section = AddFoodSectionType.selectContainerType;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void goToConfirmationSection() {
    section = AddFoodSectionType.confirmation;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void goToInputFoodInfoSection() {
    if (section != AddFoodSectionType.selectFood) {
      return;
    }
    section = AddFoodSectionType.inputFoodInfo;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void goToInputContainerInfoSection() {
    if (section != AddFoodSectionType.selectContainerType) {
      return;
    }
    section = AddFoodSectionType.inputContainerInfo;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void setNfcUid(String id) {
    nfcUid = id;
    section = AddFoodSectionType.selectFood;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void setFoodInfoByTemplate(FoodTemplate template) {
    name = template.name;
    gramPerMilliliter = template.gramPerMiller;
    if (template.gramPerMiller == null) {
      unitType = FoodUnitType.gram;
    } else {
      unitType = FoodUnitType.milliliter;
    }
    notifyListeners();
  }

  void setSelectedContainerTemplate(ContainerTemplate template) {
    selectedContainer = template;
    containerMaxWeightGram =
        template.containerMaxWeightGram * (gramPerMilliliter ?? 1);
    containerWeightGram = template.containerWeightGram;
    notifyListeners();
  }

  void setFoodInputFormInfo({
    required String name,
    required double? gramPerMiller,
  }) {
    this.name = name;
    switch (unitType) {
      case FoodUnitType.gram:
        break;
      case FoodUnitType.milliliter:
        gramPerMilliliter = gramPerMiller;
        break;
    }
    section = AddFoodSectionType.selectContainerType;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  void setContainerInputFormInfo({
    required double? containerWeight,
    required double? containerMaxInput,
  }) {
    containerWeightGram = containerWeight;
    switch (unitType) {
      case FoodUnitType.gram:
        containerMaxWeightGram = containerMaxInput;
        break;
      case FoodUnitType.milliliter:
        containerMaxWeightGram = (containerMaxInput ?? 1000) * (gramPerMilliliter ?? 1);
        break;
    }
    section = AddFoodSectionType.confirmation;
    _sectionStack = [
      ..._sectionStack,
      section,
    ];
    notifyListeners();
  }

  bool validateFoodInfo() {
    return name != null && name?.isNotEmpty == true;
  }

  bool validateContainerInfo() {
    return containerMaxWeightGram != null;
  }

  Future<void> save() async {
    notifyListeners();
    await _foodRepository.create(
      name: name!,
      nfcUid: nfcUid!,
      containerMaxWeightGram: containerMaxWeightGram!,
      containerWeightGram: containerWeightGram!,
    );
  }

  void setUnitType(FoodUnitType? type) {
    if (type == null) {
      return;
    }
    unitType = type;
    notifyListeners();
  }

  bool pop() {
    if (_sectionStack.length <= 1) {
      return true;
    }
    _sectionStack = [
      ..._sectionStack.sublist(0, _sectionStack.length - 1),
    ];
    section = _sectionStack.last;
    notifyListeners();
    return false;
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

enum FoodUnitType { gram, milliliter }

final addFoodPageNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  return AddFoodPageNotifier(ref.read(foodRepository));
});
