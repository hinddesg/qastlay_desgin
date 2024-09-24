import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:qastlay/features/shop/screens/checkout/widgets/information_details.dart';
import 'package:qastlay/features/shop/screens/checkout/widgets/installment_plan.dart';
import 'package:qastlay/features/shop/screens/checkout/widgets/total_order.dart';
import 'package:qastlay/utils/constants/colors.dart';
import 'package:qastlay/utils/constants/image_strings.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import 'package:qastlay/utils/functions/helper_function.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../common/widgets/success_screen/success_screen.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../navigation_menu.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Scaffold(
        appBar: CustomAppbar(
          showBackArrow: true,
          automaticallyImplyLeading: true,
          title: Text('Order Reviews',
              style: Theme.of(context).textTheme.headlineSmall),
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(CustomSizes.defaultSpace),
            child: Column(
              children: [
                const CartItems(showAddRemoveButtons: false,),
                const SizedBox (height: CustomSizes.spaceEtwSections),
                RoundedContainer(
                  backgroundColor: dark ? CustomColors.dark : CustomColors.white,
                  showBorder: true,
                  child: Padding(
                    padding: const EdgeInsets.all(CustomSizes.defaultSpace),
                    child: Column(
                      children: [
                        const InstallmentPlan(),
                        const SizedBox (height: CustomSizes.spaceEtwSections),
                        const TotalOrder(text: 'Total price', price: '555',),
                        const SizedBox (height: CustomSizes.spaceBtwItems),
                        const TotalOrder(text: 'Price after installment', price: '255',),
                        const SizedBox(height: CustomSizes.spaceEtwSections),
                        const SectionHeading(
                          title: 'Payment Method',
                          showActionButton: false,
                        ),
                        const SizedBox(height: CustomSizes.spaceBtwItems),
                        Row(
                          children: [
                            const Image( width: 30,height: 30,fit: BoxFit.contain, image: AssetImage(CustomImages.payment)),
                            const SizedBox(width: CustomSizes.md),
                            Text('Cash Payment', style: Theme.of(context).textTheme.bodyLarge,),
                          ],
                        ),
                        const SizedBox(height: CustomSizes.spaceEtwSections),
                        const InformationDetails(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: ElevatedButton (onPressed: () => Get.to(
                () => SuccessScreen(
              image: CustomImages.checked,
              title: 'Order Success!',
              subTitle: 'Your Order will be answer soon!',
              onPressed: () => Get.offAll(() => const NavigationMenu()),
            ), // SuccessScreen

          ), child: const Text('Checkout \$255.0')),
        )
    );
  }
}

