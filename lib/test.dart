import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qastlay/common/widgets/loaders/animation_loader.dart';
import 'package:qastlay/utils/constants/colors.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import 'package:qastlay/utils/popups/full_screen_loader.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: CustomHelperFunctions.isDarkMode(Get.context!) ? CustomColors.dark : CustomColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            // const SizedBox(height: 50), // Adjust the spacing as needed
            // AnimationLoaderWidget(text: text, animation: animation),
          ],
        ),
      ),
    );
  }
}
