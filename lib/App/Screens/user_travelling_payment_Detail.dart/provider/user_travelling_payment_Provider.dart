import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/model/paymentModel.dart';
import 'package:chartercar/App/Screens/user_travelling_payment_Detail.dart/service/userTravellingPaymentDetail.dart';
import 'package:chartercar/App/apis_const/variables.dart';
import 'package:chartercar/utils/Text/text.dart';
import 'package:flutter/material.dart';

class UserTravellingPaymentDetailProvider extends ChangeNotifier
    with UserTravellingPaymentDetailService, Variables {
  TextEditingController nameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNoController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController holderNameController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController cVVController = TextEditingController();
  List<PaymentModel> cardsModel = [
    PaymentModel(
        cardNumber: '5214432156784345',
        cardHolderName: 'Nasyiya Ulfa',
        date: '12/24',
        cvv: '1234',
        cardName: 'Universal Card'),
    PaymentModel(
      cardName: 'Master Card',
      cardNumber: '5214432156784345',
      cardHolderName: 'Nasyiya Ulfa',
      date: '12/24',
      cvv: '1234',
      color: Color(0xffCA8385),
    )
  ];
  //locationDropDownProvider
  int _selectedIndex = 0;
  bool _isPickDropdownOpen = false;
  bool _isDropDropdownOpen = false;
  bool get isPickDropdownOpen => _isPickDropdownOpen;
  bool get isDropDropdownOpen => _isDropDropdownOpen;
  String _pick_heading_Text = MyText.select_your_city;
  String _drop_heading_Text = MyText.select_your_city;

  String get pickHeading_Text => _pick_heading_Text;
  String get dropheading_Text => _drop_heading_Text;

  void changeIndex(int newIndex) {
    _selectedIndex = newIndex;
  }

  void changePickSelectedIndex() {
    tooglePickDropDown();
    _pick_heading_Text = downLocationsList[_selectedIndex];
    notifyListeners();
  }

  void changeDropSelectedIndex() {
    toogleDropDropDown();
    _drop_heading_Text = downLocationsList[_selectedIndex];
    notifyListeners();
  }

  void tooglePickDropDown() {
    _isDropDropdownOpen = false;
    _isPickDropdownOpen = !_isPickDropdownOpen;
    notifyListeners();
  }

  void toogleDropDropDown() {
    _isPickDropdownOpen = false;
    _isDropDropdownOpen = !_isDropDropdownOpen;
    notifyListeners();
  }

  List<String> downLocationsList = [
    'RahimYarKhan',
    'SadiqAbad',
    'Bahawalpur',
    'Lahor',
    'Islamabad',
    'Karachi',
    'Sakkhar',
    'Pishawar',
    'Quetta',
  ];
//location provider end
// DatePicker
  String _pickedDate = MyText.select_your_date;
  String _dropDate = MyText.select_your_date;
  DateTime _selectedDate = DateTime.now();

  String get pickedDate => _pickedDate;
  String get dropDate => _dropDate;

  void changePickDate(BuildContext context, DateTime date) {
    _selectedDate = date;
    _pickedDate =
        "${_selectedDate.day} / ${_selectedDate.month} / ${_selectedDate.year}  ";
    Navigator.pop(context);
    notifyListeners();
  }

  void changeDropDate(BuildContext context, DateTime date) {
    _selectedDate = date;
    _dropDate =
        "${_selectedDate.day} / ${_selectedDate.month} / ${_selectedDate.year}  ";
    Navigator.pop(context);
    notifyListeners();
  }

//datePicker End
//timePicker
  TimeOfDay _selectedTime = TimeOfDay.now();
  TimeOfDay get selectedTime => _selectedTime;
  //pickTime
  String _pickedTime = MyText.select_your_time;
  //dropTime
  String _dropTime = MyText.select_your_time;
  //pickTime
  String get pickedTime => _pickedTime;
  //dropTime
  String get dropTime => _dropTime;

  void changePickTime(BuildContext context, TimeOfDay time) {
    _selectedTime = time;
    _pickedTime =
        "${_selectedTime.hour} : ${_selectedTime.minute} ${_selectedTime.period.name}";
    notifyListeners();
  }

  void changeDropTime(BuildContext context, TimeOfDay time) {
    _selectedTime = time;
    _dropTime =
        "${_selectedTime.hour} : ${_selectedTime.minute} ${_selectedTime.period.name}";
    notifyListeners();
  }

  //timePickerEnd
  int _index = 0;
  int get index => _index;

  int _selectedCard = -1;
  int get selectedCard => _selectedCard;

  PaymentProvider() {
    dateController.addListener(() {
      final text = dateController.text;
      if (text.length == 2 && !text.endsWith('/')) {
        dateController.text = text.substring(0, 2) + '/';
        dateController.selection = TextSelection.fromPosition(
          TextPosition(offset: dateController.text.length),
        );
      }
    });
  }

  //
  //
  //
  //

  Future<bool> orderDetailApi() async {
    bool response = await orderDetailService(variables: orderInfoVariable());
    if (response) {
    } else {}
    return response;
  }
}
