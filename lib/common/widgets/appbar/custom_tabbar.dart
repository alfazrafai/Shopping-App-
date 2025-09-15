import 'package:flutter/material.dart';

import '../../../utils/helper/CHelperClass.dart';

class CTabBat extends StatelessWidget implements PreferredSizeWidget {
  const CTabBat({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CHelperFunctions.isDark(context);

    return Material(
      color: dark ? Colors.black : Colors.white,

      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        labelColor: dark ? Colors.white : Colors.black,
        unselectedLabelColor: dark ? Colors.grey : Colors.grey,
        indicatorColor: dark ? Colors.white : Colors.black,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CHelperFunctions.getAppBarHeight());
}
