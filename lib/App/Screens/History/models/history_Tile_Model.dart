class HistoryTileModel {
  final String carName;
  final String type;
  final String image;
  final String engine;
  final String transmition;
  final int noOfSeats;
  final String pickPoint;
  final String dropPoint;
  final int daysAgo;
  final double price;
  String status;

  HistoryTileModel({
    required this.carName,
    required this.type,
    required this.image,
    required this.engine,
    required this.transmition,
    required this.noOfSeats,
    required this.pickPoint,
    required this.dropPoint,
    required this.daysAgo,
    required this.price,
    required this.status,
  });
}
