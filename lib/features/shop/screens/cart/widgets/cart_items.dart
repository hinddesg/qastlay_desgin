import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../utils/popups/loaders.dart';
import '../../../models/home_view_model.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) {
        return ListView.separated(
          shrinkWrap: true,
          itemCount: controller.cartItems.length,
          separatorBuilder: (_, __) {
            return const SizedBox(height: CustomSizes.spaceEtwSections);
          },
          itemBuilder: (_, index) {
            final cart = controller.cartItems[index];
            return Dismissible(
              key: Key(cart.product.id.toString()),
              onDismissed: (direction) {
                controller.removeFromCart(cart.product);
                // show snackbar
                // Then show a snackbar.
                TLoaders.warningSnackBar(
                    title: 'Remove from Cart',
                    message: '${cart.product.name} dismissed');
                // ScaffoldMessenger.of(context).showSnackBar(
                //     SnackBar(content: Text('${cart.product.name} dismissed')));
              },
              child: Column(
                children: [
                  CartItem(
                    productModel: controller.cartItems[index].product,
                  ),
                  if (showAddRemoveButtons)
                    const SizedBox(
                      height: CustomSizes.spaceBtwItems,
                    ),
                  if (showAddRemoveButtons)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const SizedBox(width: 70),
                            AddRemoveButton(
                              productModel: controller.cartItems[index].product,
                            ),
                          ],
                        ),
                        ProductPriceText(
                          price:
                          '${controller.cartItems[index].totalPrice}',
                        ),
                      ],
                    )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
