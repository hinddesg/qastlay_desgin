import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:qastlay/common/widgets/texts/section_heading.dart';
import 'package:get/get.dart';
import '../../../../features/personalization/screens/profile/profile.dart';
import '../../../../common/widgets/list_titles/settings_menu_title.dart';
import '../../../../common/widgets/list_titles/user_profile_title.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../shop/screens/cart/cart.dart';
import '../../../shop/screens/order/order.dart';
import '../about_us/about_us.dart';
import '../address/address.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ///header
            PrimaryHeaderContainer(child: Column(
              children: [
               CustomAppbar(title: Text('Account',style: Theme.of(context).textTheme.headlineSmall!.apply(color: CustomColors.white,),)),

            /// User Profile Card
                 UserProfileTitle(onPressed:()=>Get.to(() => const ProfileScreen()), ),
                const SizedBox(height: CustomSizes.spaceEtwSections),
              ],
            )),

            ///body
              Padding(
                padding: const EdgeInsets.all(CustomSizes.defaultSpace),
              child: Column(
                children: [
                  const SectionHeading(title: 'Account Settings',showActionButton: false,),
                  const SizedBox(height: CustomSizes.spaceBtwItems),
                   SettingsMenuTitle(icon: Iconsax.safe_home, title: 'My Addresses', subTitle: 'Set shopping delivery address ',
                     onTap:() => Get.to(() => const UserAddressScreen()), ),
                   SettingsMenuTitle(icon: Iconsax.shopping_cart, title: 'My Cart', subTitle: 'Add, remove products and move to checkout',
                     onTap:() => Get.to(() => const CartScreen()),),

                   SettingsMenuTitle (icon: Iconsax.bag_tick, title: 'My Orders', subTitle: 'In-progress and Completed Orders',
                       onTap:() => Get.to(() => const OrderScreen()),),
                   SettingsMenuTitle (icon: Iconsax.notification, title: 'Notifications', subTitle: 'Set any kind of notification me',onTap:(){},),
                   SettingsMenuTitle (icon: Iconsax.security_card, title: 'Account Privacy', subTitle: 'Manage data usage and connected accounts',onTap:(){},),

               /// -- App Settings
                  const SizedBox(height: CustomSizes.spaceEtwSections),
                   const SectionHeading (title: 'App Settings', showActionButton: false),
                  const SizedBox(height: CustomSizes.spaceBtwItems),
                  SettingsMenuTitle(
                    icon: Iconsax.people,
                    title: 'About Us',
                    subTitle: 'All information about component',
                      onTap:() => Get.to(() => const AboutUsScreen())
                  ),

                   SettingsMenuTitle(icon: Iconsax.document_upload, title: 'Load Data', subTitle: 'Upload Data to your Cloud Firebase',onTap:(){},),
                  SettingsMenuTitle(
                    icon: Iconsax.location,
                    title: 'Geolocation',
                    subTitle: 'Set recommendation based on location',
                    trailing: Switch(value: true, onChanged: (value) {}),
              ),
                  SettingsMenuTitle(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode',
                    subTitle: 'Search result is safe for all ages',
                    trailing: Switch(value: false, onChanged: (value) {}),

            ),
                  SettingsMenuTitle(
                    icon: Iconsax.image,
                    title: 'HD Image Quality',
                    subTitle: 'Set image quality to be seen',
                     trailing: Switch(value: false, onChanged: (value) {}),
            ),
                  const SizedBox(height: CustomSizes.spaceEtwSections),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: () { }, child: const Text('Logout'),),
                  ),
                  const SizedBox(height: CustomSizes.spaceEtwSections * 2.5),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
