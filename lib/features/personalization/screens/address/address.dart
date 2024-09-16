import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/features/personalization/screens/address/widgets/single_address.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: CustomColors.primary,
        onPressed: () => Get.to(() => const AddNewAddress()),
        child: const Icon(Iconsax.add, color: CustomColors.white),
      ),

      appBar: CustomAppbar(
        showBackArrow: true,
        title:
            Text('Addresses', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(children: [
            SingleAddress(selectedAddress: true),
            SingleAddress(selectedAddress: false),
          ]),
        ),
      ),
    );
  }
}
