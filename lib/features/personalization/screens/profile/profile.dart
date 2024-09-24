import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/images/circular_image.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/texts/section_heading.dart';
import 'package:qastlay/features/personalization/controllers/user_controller.dart';
import 'package:qastlay/features/personalization/screens/profile/change_name.dart';
import 'package:qastlay/features/personalization/screens/profile/widgets/profile_menu.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const CustomAppbar(
        showBackArrow: true,
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
   child: Padding(
    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
     child: Column(
       children: [
         SizedBox(
           width: double.infinity,
           child: Column(children: [
             const CircularImage(image: CustomImages.user,width: 80,height: 80,),
             TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
           ],),
         ),
         const SizedBox(height: CustomSizes.spaceBtwItems /2),
         const Divider(),
         const SizedBox(height: CustomSizes.spaceBtwItems),
         const SectionHeading(title: 'Profile Information',showActionButton: false,),
         const SizedBox(height: CustomSizes.spaceBtwItems),
         ProfileMenu( title: 'Name', value: controller.user.value.fullName, onPressed: () => Get.to(()=> const ChangeName())),
         ProfileMenu( title: 'Username', value: controller.user.value.username, onPressed: () { },),

         const SizedBox(height: CustomSizes.spaceBtwItems /2),
         const Divider(),
         const SizedBox(height: CustomSizes.spaceBtwItems),

         const SectionHeading(title: 'Personal Information',showActionButton: false,),
         const SizedBox (height: CustomSizes.spaceBtwItems),

         ProfileMenu(title: 'User ID', value: controller.user.value.id,icon: Iconsax.copy, onPressed: () {}),
         ProfileMenu(title: 'E-mail', value: controller.user.value.email, onPressed: () {}),
         ProfileMenu(title: 'Phone Number', value: controller.user.value.phoneNumber, onPressed: () {}),


         const Divider(),
         const SizedBox (height: CustomSizes.spaceBtwItems),
         Center(child: TextButton(onPressed:()=>controller.deleteAccountWarningPopup(), child: const Text('Close Account',style: TextStyle(color: Colors.red),)))

       ],
     ),
   )
      ),
    );
  }
}
