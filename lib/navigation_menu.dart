import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:qastlay/utils/constants/colors.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import 'features/personalization/screens/settings/settings.dart';
import 'features/shop/screens/home/home.dart';
import 'features/shop/screens/store/store.dart';
import 'features/shop/screens/wishlist/wishlist.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = CustomHelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
            elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? CustomColors.black: Colors.white,
          indicatorColor: darkMode ? CustomColors.white.withOpacity (0.1): CustomColors.black.withOpacity(0.1),

          destinations: const [
         NavigationDestination(icon:Icon(Iconsax.home), label: 'Home'),
          NavigationDestination(icon:Icon(Iconsax.shop), label: 'Store'),
          NavigationDestination(icon:Icon(Iconsax.heart), label: 'Watchlist'),
          NavigationDestination(icon:Icon(Iconsax.user), label: 'Profile'),
        ],),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex =0.obs;
  final screens = [
    const HomeScreen(),
    const Store(),
    const FavouriteScreen(),
   const SettingsScreen(),
  ];

}