import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/authentication/screens/password_configraction/forget_password.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';
import '../../signup/signup.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: CustomSizes.spaceEtwSections),
        child: Column(
          children: [
            ///Email
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: CustomTexts.email
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields),
            ///Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: CustomTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}, activeColor: CustomColors.primary,),
                    const Text(CustomTexts.rememberMe),
                  ],
                ),
                ///Forget Password
                TextButton(

                    onPressed:  ()=> Get.to(()=> const ForgetPassword()),
                    child: const Text(CustomTexts.forgetPassword,style: TextStyle(color: CustomColors.primary,),)),
              ],
            ),
            const SizedBox(height: CustomSizes.spaceBtwInputFields),
            ///SignIn Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(onPressed: ()=>Get.to(()=>const NavigationMenu()), child: const Text( CustomTexts.signIn))
            ),
            const SizedBox(height: CustomSizes.spaceBtwItems),
            ///SignUp Button
            SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                    onPressed: ()=>Get.to(()=>const SignupScreen()),
                    child: const Text( CustomTexts.createAccount))
            ),
          ],
        ),
      ),
    );
  }
}