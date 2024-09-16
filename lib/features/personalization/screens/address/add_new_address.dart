import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/sizes.dart';

class AddNewAddress extends StatelessWidget {
  const AddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
          showBackArrow: true, title: Text('Add new Address')),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),

          child: Form(
            child: Column(
              children: [
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.user), labelText: 'Name')),
                const SizedBox(height: CustomSizes.spaceBtwInputFields),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.mobile),
                        labelText: 'Phone Number')),
                const SizedBox(height: CustomSizes.spaceBtwInputFields),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.building),
                        labelText: 'City')),
                const SizedBox(height: CustomSizes.spaceBtwInputFields),
                TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Iconsax.activity),
                        labelText: 'Area')),
                const SizedBox(height: CustomSizes.spaceBtwInputFields),
                SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {  }, child: Text('Save'),),)
              ],
            ), // Column
          ),
        ),
      ),
    );
  }
}
