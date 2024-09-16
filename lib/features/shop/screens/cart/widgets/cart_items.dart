import 'package:flutter/material.dart';
import '../../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../../utils/constants/sizes.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        itemCount: 3,
        separatorBuilder: (_, __ ) => const SizedBox (height: CustomSizes.spaceEtwSections),
        itemBuilder: (_, index) =>  Column(
            children: [
              const CartItem(),
              if(showAddRemoveButtons) const SizedBox(height: CustomSizes.spaceBtwItems,),
              if(showAddRemoveButtons) const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(width: 70,),
                      AddRemoveButton(),
                    ],
                  ),
                  ProductPriceText(price: '250'),
                ],
              )
            ]
        )
    );
  }
}
