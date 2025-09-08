import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:shopping_app/utils/constant/sizes.dart';
import 'package:shopping_app/utils/device/device_utility.dart';

class CAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CAppBar({
    super.key,
    this.title,
    this.showBack = false,
    this.leading,
    this.actions,
    this.leadingCallback,
  });

  final Widget? title;
  final bool showBack;
  final IconData? leading;
  final List<Widget>? actions;
  final VoidCallback? leadingCallback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: CSizes.lg),
      child: AppBar(
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: showBack
            ? IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Iconsax.arrow_left),
              )
            : leading != null
            ? IconButton(onPressed: leadingCallback, icon: Icon(leading))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(CDeviceUtility.getAppBarHeigh());
}
