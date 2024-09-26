import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/features/shop/models/home_view_model.dart';
import 'package:qastlay/features/shop/screens/cart/widgets/cart_items.dart';
import 'package:qastlay/utils/constants/sizes.dart';
import '../checkout/checkout.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static final cartController = Get.find<HomeViewModel>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppbar(
          showBackArrow: true,
          automaticallyImplyLeading: true,
          title: Text(
            'Cart',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: cartController.cartItems.isEmpty
              ? Center(
            child: Text(
              'No items in your wishlist!',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          )
              : const CartItems(),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),
          child: Obx(
                ()=> ElevatedButton(
                onPressed: () => Get.to(() => const CheckoutScreen()),
                child:  Text('Checkout \$${cartController.totalPrice}')),
          ),
        ));
  }
}
