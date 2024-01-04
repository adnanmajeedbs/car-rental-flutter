import 'package:chartercar/utils/Images/ImagePath.dart';

class RecentModel {
  final String carName;
  final String catagoury;

  final String image;
  final String gasoline;

  final String driveManual;
  final String capasity;
  final String price;
  RecentModel({
    required this.carName,
    required this.catagoury,
    required this.image,
    required this.gasoline,
    required this.driveManual,
    required this.capasity,
    required this.price,
  });
}

List<RecentModel> recentList = [
  RecentModel(
      carName: "Koenigsegg",
      catagoury: "Sports",
      image: ImagePath.car1,
      gasoline: "90L",
      driveManual: "Manual",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Nissan GT-R",
      catagoury: "Sports",
      gasoline: "80L",
      image: ImagePath.Koenigsegg,
      driveManual: "Auto",
      capasity: "4 People",
      price: "\$89.00"),
  RecentModel(
      carName: "Supra",
      catagoury: "Sports",
      image: ImagePath.car2,
      gasoline: "70L",
      driveManual: "Manual",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Macclaren",
      catagoury: "Sports",
      image: ImagePath.car1,
      gasoline: "90L",
      driveManual: "Auto",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Nissan GT-R",
      catagoury: "Sports",
      gasoline: "80L",
      image: ImagePath.Koenigsegg,
      driveManual: "Manual",
      capasity: "4 People",
      price: "\$89.00"),
  RecentModel(
      carName: "Koenigsegg",
      catagoury: "Sports",
      image: ImagePath.car2,
      gasoline: "70L",
      driveManual: "Auto",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Koenigsegg",
      catagoury: "Sports",
      image: ImagePath.car1,
      gasoline: "90L",
      driveManual: "Manual",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Nissan GT-R",
      catagoury: "Sports",
      gasoline: "120L",
      image: ImagePath.Koenigsegg,
      driveManual: "Auto",
      capasity: "4 People",
      price: "\$89.00"),
  RecentModel(
      carName: "Koenigsegg",
      catagoury: "Sports",
      image: ImagePath.car2,
      gasoline: "150L",
      driveManual: "Manual",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Koenigsegg",
      catagoury: "Sports",
      image: ImagePath.car1,
      gasoline: "200L",
      driveManual: "Auto",
      capasity: "2 People",
      price: "\$99.00"),
  RecentModel(
      carName: "Nissan GT-R",
      catagoury: "Sports",
      gasoline: "80L",
      image: ImagePath.Koenigsegg,
      driveManual: "Manual",
      capasity: "4 People",
      price: "\$89.00"),
  RecentModel(
      carName: "Koenigsegg",
      catagoury: "Sports",
      image: ImagePath.car2,
      gasoline: "90L",
      driveManual: "Auto",
      capasity: "2 People",
      price: "\$99.00")
];
