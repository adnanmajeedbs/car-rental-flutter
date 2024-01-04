import 'package:chartercar/App/Common/TextFeild/authentication%20TextFeilds/secondaryTextFeild.dart';
import 'package:chartercar/App/Screens/Home%20Screen/provider/searchProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RecentSearchTextFeild extends StatelessWidget {
  const RecentSearchTextFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<RecentSearchProvider>(
      builder: (context, value, child) {
        return SecondaryTextFeild(
          controller: value.searchController,
          hintText: "Search something here",
          // labelText: "ander",
        );
      },
    );
  }
}
