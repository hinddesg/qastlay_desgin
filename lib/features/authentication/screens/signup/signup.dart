import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import 'package:qastlay/utils/constants/text_strings.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/functions/helper_function.dart';
import 'widgets/signupform.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar:const CustomAppbar(showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              Text(
                CustomTexts.sighupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: CustomSizes.spaceEtwSections),
              const SignupForm()
            ],
          ),
        ),
      ),
    );
  }
}
