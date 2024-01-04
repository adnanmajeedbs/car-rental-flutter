import 'package:chartercar/App/Common/toast_Message/toast_Message.dart';
import 'package:chartercar/App/Screens/recents/model/recentModel.dart';
import 'package:flutter/material.dart';

import '../../../../utils/Images/ImagePath.dart';

class FavouriteProvider extends ChangeNotifier {
  List<RecentModel> favouriteList = [
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
  ];
  void toggleFovourite(RecentModel item) {
    if (favouriteList.contains(item)) {
      favouriteList.remove(item);
      showToastMessage("Item remove from favourite");
    } else {
      favouriteList.add(item);
      showToastMessage("Item added to favourite");
    }

    notifyListeners();
  }
}
