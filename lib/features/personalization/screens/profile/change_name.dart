import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/features/personalization/controllers/update_name_controller.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import 'package:qastlay/utils/constants/text_strings.dart';
import 'package:qastlay/utils/validators/validation.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UpdateNameController());

    return Scaffold(
        /// Custom Appbar
        appBar: CustomAppbar(
          showBackArrow: true,
          title: Text('Change Name',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              /// Headings
              Text(
                'Use real name for easy verification. This name will appear on several pages.',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(height: CustomSizes.spaceEtwSections),

              /// Text field and Button
              Form(
                  key: controller.updateUserNameFormKey,
                  child: Column(children: [
                    TextFormField(
                      controller: controller.firstName,
                      validator: (value) => CustomValidation.validateEmptyText(
                          'First name', value),
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: CustomTexts.firstName,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                    const SizedBox(height: CustomSizes.spaceBtwInputFields),
                    TextFormField(
                      controller: controller.lastName,
                      validator: (value) => CustomValidation.validateEmptyText(
                          'Last name', value),
                      expands: false,
                      decoration: const InputDecoration(
                          labelText: CustomTexts.LastName,
                          prefixIcon: Icon(Iconsax.user)),
                    ),
                  ])),

              const SizedBox(height: CustomSizes.spaceEtwSections),

              /// Save Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => controller.updateUserName(),
                    child: const Text('Save')),
              ),
            ])));
  }
}
