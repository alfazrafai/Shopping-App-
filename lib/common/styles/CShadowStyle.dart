import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';

class CShadow {
  static final verticalProductShadow = BoxShadow(
    color: CColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 8,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: CColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 8,
    offset: const Offset(0, 2),
  );
}
