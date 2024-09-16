import 'package:flutter/material.dart';
import 'package:qastlay/features/authentication/screens/login/widgets/login_form.dart';
import 'package:qastlay/features/authentication/screens/login/widgets/login_header.dart';
import 'package:qastlay/utils/constants/text_strings.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_buttons.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/functions/helper_function.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: CustomSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              LoginHeader(),
              ///Form
              LoginForm(),
            /// Divider
               FormDivider(dividerText: CustomTexts.orSignInWith,),
          /// Footer
              SizedBox(height: CustomSizes.spaceEtwSections),
              SocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}







