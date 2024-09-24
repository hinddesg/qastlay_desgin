import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/authentication/controllers/login/login_controller.dart';
import 'package:qastlay/utils/constants/colors.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import 'package:qastlay/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller= Get.put(LoginController());
    return Row (
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration (border: Border.all(color: CustomColors.grey), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () =>controller.googleSignIn(),
            icon: const Image(
              width: CustomSizes.iconMd,
              height: CustomSizes.iconMd,
              image: AssetImage(CustomImages.google),
            ),
          ),
        ),
        const SizedBox(width: CustomSizes.spaceBtwItems),
        // Container(
        //   decoration: BoxDecoration (border: Border.all(color: CustomColors.grey), borderRadius: BorderRadius.circular(100)),
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: const Image(
        //       width: CustomSizes.iconMd,
        //       height: CustomSizes.iconMd,
        //       image: AssetImage(CustomImages.facebook),
        //     ),
        //   ),
        // ),
      ],

    );
  }
}