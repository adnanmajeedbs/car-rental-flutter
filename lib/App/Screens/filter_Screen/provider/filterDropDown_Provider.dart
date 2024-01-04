import 'package:chartercar/App/Screens/filter_Screen/model/dropDownsModles.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:flutter/material.dart';

class FilterDropDownProvider extends ChangeNotifier {
  // range slider functionalities
  double _minValue = 1000;
  double _maxValue = 10000;
  int _divisions = 100;
  double get minValue => _minValue;
  double get maxValue => _maxValue;
  int get divisions => _divisions;
  RangeValues _values = RangeValues(1000, 10000);

  RangeValues get values => _values;

  void updateValues(RangeValues newValue) {
    _values = newValue;
    notifyListeners();
  }

  // fuel selection functionalities
  void toogleFuelTile(int index) {
    fuelModelList[index].isselected = !fuelModelList[index].isselected;
    notifyListeners();
  }

  // condition functionalites
  bool _newCondition = false;
  bool _usedCondition = false;
  bool get newCondition => _newCondition;
  bool get usedCondition => _usedCondition;

  void toogleNewCondition() {
    _newCondition = !_newCondition;
    notifyListeners();
  }

  void toogleUsedCondition() {
    _usedCondition = !_usedCondition;
    notifyListeners();
  }

  // drop down functionalities
  int _index = 0;
  bool _isMakeOpen = false;
  bool _isModelOpen = false;
  bool _isRegisterationCityOpen = false;
  bool _isCarDocumentsOpen = false;
  bool _isTransmissionOpen = false;
  String _makeSelectedText = MyText.select_Maker;
  String _modelSelectedText = MyText.select_Model;
  String _carDocumentsSelectedText = MyText.all;
  String _transmissionSelectedText = MyText.all;

  int get index => _index;
  bool get isMakeOpen => _isMakeOpen;
  bool get isModelOpen => _isModelOpen;
  bool get isRegisterationCityOpen => _isRegisterationCityOpen;
  bool get isCarDocumentsOpen => _isCarDocumentsOpen;
  bool get isTransmissionOpen => _isTransmissionOpen;
  String get makeSelectedText => _makeSelectedText;
  String get modelSelectedText => _modelSelectedText;
  String get carDocumentsSelectedText => _carDocumentsSelectedText;
  String get transmissionSelectedText => _transmissionSelectedText;

  void clearAll() {
    for (int i = 0; i <= fuelModelList.length.toInt() - 1; i++) {
      fuelModelList[i].isselected = false;
    }
    _newCondition = false;
    _usedCondition = false;
    _values = RangeValues(1000, 10000);
    _makeSelectedText = MyText.select_Maker;
    _modelSelectedText = MyText.select_Model;
    _carDocumentsSelectedText = MyText.all;
    _transmissionSelectedText = MyText.all;
    _isMakeOpen = false;
    _isModelOpen = false;
    _isRegisterationCityOpen = false;
    _isCarDocumentsOpen = false;
    _isTransmissionOpen = false;
    notifyListeners();
  }

  void changeIndex(int newIndex) {
    _index = newIndex;
    notifyListeners();
  }

  void toogleIsMakeOpen() {
    _isMakeOpen = !_isMakeOpen;
    _isModelOpen = false;
    _isRegisterationCityOpen = false;
    _isCarDocumentsOpen = false;
    _isTransmissionOpen = false;
    notifyListeners();
  }

  void toogleIsModelOpen() {
    _isModelOpen = !_isModelOpen;
    _isMakeOpen = false;
    _isRegisterationCityOpen = false;
    _isCarDocumentsOpen = false;
    _isTransmissionOpen = false;
    notifyListeners();
  }

  void toogleIsRegisterationCityOpen() {
    _isRegisterationCityOpen = !_isRegisterationCityOpen;
    _isMakeOpen = false;
    _isModelOpen = false;
    _isCarDocumentsOpen = false;
    _isTransmissionOpen = false;
    notifyListeners();
  }

  void toogleIsCarDocumentsOpen() {
    _isCarDocumentsOpen = !_isCarDocumentsOpen;
    _isMakeOpen = false;
    _isModelOpen = false;
    _isRegisterationCityOpen = false;
    _isTransmissionOpen = false;
    notifyListeners();
  }

  void toogleIsTransmissionOpen() {
    _isTransmissionOpen = !_isTransmissionOpen;
    _isMakeOpen = false;
    _isModelOpen = false;
    _isRegisterationCityOpen = false;
    _isCarDocumentsOpen = false;
    notifyListeners();
  }

  void changeMakeSelectedText() {
    _makeSelectedText = makeList[_index].toString();
    ChangeNotifier;
  }

  void changeModelSelectedText() {
    _modelSelectedText = modelsList[_index];
    ChangeNotifier;
  }

  void changeCarDocumentsSelectedText() {
    _carDocumentsSelectedText = carDocumentsList[_index];
    ChangeNotifier;
  }

  void changeTransmissionSelectedText() {
    _transmissionSelectedText = transmittionList[_index];
    ChangeNotifier;
  }
}
