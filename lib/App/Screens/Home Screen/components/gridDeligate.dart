import 'package:flutter/rendering.dart';

class MyCustomGridDelegate extends SliverGridDelegate {
  final double tileWidth;
  final double tileHeight;
  final int crossAxisCount;
  final double mainAxisSpacing;
  final double crossAxisSpacing;
  final bool reverseCrossAxis;
  MyCustomGridDelegate({
    required this.tileWidth,
    required this.tileHeight,
    this.crossAxisCount = 2,
    this.mainAxisSpacing = 8.0,
    this.crossAxisSpacing = 8.0,
    this.reverseCrossAxis = false,
  });
  @override
  SliverGridLayout getLayout(SliverConstraints constraints) {
    return SliverGridRegularTileLayout(
      crossAxisCount: crossAxisCount,
      mainAxisStride: tileHeight + mainAxisSpacing,
      crossAxisStride: tileWidth + crossAxisSpacing,
      childMainAxisExtent: tileHeight,
      childCrossAxisExtent: tileWidth,
      reverseCrossAxis: reverseCrossAxis,
    );
  }

  @override
  bool shouldRelayout(SliverGridDelegate oldDelegate) {
    return true;
  }
}
