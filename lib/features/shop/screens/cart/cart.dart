import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: CustomAppbar(
            showBackArrow: true,
            automaticallyImplyLeading:true,
            title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall)),
        body: const Padding(
        padding: EdgeInsets.all(CustomSizes.defaultSpace),
        child:CartItems(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: ElevatedButton (onPressed: () => Get.to(() => const CheckoutScreen()), child: const Text('Checkout \$256.0')),
        )

    );
  }
}
