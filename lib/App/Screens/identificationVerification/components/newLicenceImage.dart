import 'dart:io';

import 'package:flutter/cupertino.dart';

import 'licenecRichText.dart';

class NewLicenceImage extends StatelessWidget {
  final String image;
  final int index;
  const NewLicenceImage({super.key, required this.image, required this.index});

  @override
  Widget build(BuildContext context) {
    if (image.isNotEmpty) {
      return Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            File(image),
            fit: BoxFit.fill,
            height: 164,
            width: MediaQuery.of(context).size.width - 40,
          ),
        ),
      );
    } else {
      return Container(
          padding: EdgeInsets.all(49),
          child: LicenceRichText(
            index: index,
          ));
    }
  }
}
