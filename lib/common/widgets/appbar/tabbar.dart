import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/device/device_utility.dart';
import '../../../utils/functions/helper_function.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  /// If you want to add the background color to tabs you have to wrap them in Material widget.

  /// To do that we need [PreferredSized] Widget and that's why created custom class. [PreferredSizeWidget]

  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Material(
      color: dark ? CustomColors.black : CustomColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CustomColors.primary,
        labelColor: dark ? CustomColors.white : CustomColors.primary,
        unselectedLabelColor: CustomColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(DeviceUtility.getAppBarHeight());
}
