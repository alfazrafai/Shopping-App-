import 'package:flutter/material.dart';

import '../../utils/constant/sizes.dart' show CSizes;

class CSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: CSizes.appBarHeight,
    left: CSizes.defaultSpacing,
    right: CSizes.defaultSpacing,
    bottom: CSizes.defaultSpacing,
  );
}
