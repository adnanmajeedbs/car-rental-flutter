import 'package:flutter/material.dart';

class LicenceProvider extends ChangeNotifier {
  TextEditingController licenceController = TextEditingController();

  String _imagePathFront = '';
  String _imagePathBack = '';
  String get imagePathFront => _imagePathFront;
  String get imagePathBack => _imagePathBack;

  void newImagePath(String pickedImagePath, int index) {
    index == 0
        ? _imagePathFront = pickedImagePath
        : _imagePathBack = pickedImagePath;
    notifyListeners();
  }

  void removeImage(index) {
    index == 0 ? _imagePathFront = '' : _imagePathBack = '';

    notifyListeners();
  }
}
// }
