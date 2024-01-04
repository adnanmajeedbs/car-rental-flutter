import 'package:chartercar/App/Screens/History/models/history_Tile_Model.dart';
import 'package:chartercar/utils/Images/ImagePath.dart';
import 'package:chartercar/utils/vibration/vibrattion.dart';
import 'package:flutter/material.dart';

class RatingProvider extends ChangeNotifier {
  final TextEditingController ratingText = TextEditingController();
  int _indexToChangeStatus = 0;

  double _rating = 0;
  double get rating => _rating;
  int _textLength = 0;
  int get textLength => _textLength;
  void newRating(givenRating) {
    vibrate();
    _rating = givenRating;
    notifyListeners();
  }

  void updateTextLength() {
    _textLength = ratingText.text.length.toInt();
    notifyListeners();
  }

  void changeIndex(int index) {
    _indexToChangeStatus = index;
  }

  void clearReviewsPage() {
    historyTileModelList[_indexToChangeStatus].status = 'Re-Rent';
    _rating = 0;
    ratingText.clear();
  }
}

List<HistoryTileModel> historyTileModelList = [
  HistoryTileModel(
    carName: 'Nissan GT - R',
    type: 'Sport',
    image: 'assets/images/home/Car.png',
    engine: '80L',
    transmition: 'Manual',
    noOfSeats: 2,
    pickPoint: 'London Bridge',
    dropPoint: 'King George',
    daysAgo: 4,
    price: 99.00,
    status: 'Return',
  ),
  HistoryTileModel(
      carName: 'Nissan GT - R',
      type: 'Sport',
      image: ImagePath.Koenigsegg,
      engine: '80L',
      transmition: 'Manual',
      noOfSeats: 2,
      pickPoint: 'London Bridge',
      dropPoint: 'King George',
      daysAgo: 4,
      status: 'Return',
      price: 99.00),
  HistoryTileModel(
      carName: 'Nissan GT - R',
      type: 'Sport',
      image: 'assets/images/home/Car.png',
      engine: '80L',
      transmition: 'Manual',
      noOfSeats: 2,
      pickPoint: 'London Bridge',
      dropPoint: 'King George',
      daysAgo: 4,
      status: 'Re-Rent',
      price: 99.00),
];
