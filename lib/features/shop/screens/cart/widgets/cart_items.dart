import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../../common/widgets/products/cart/cart_item.dart';
import '../../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../../utils/constants/sizes.dart';
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
      builder: (controller) => ListView.separated(
          shrinkWrap: true,
          itemCount: 3,
          separatorBuilder: (_, __ ) => const SizedBox (height: CustomSizes.spaceEtwSections),
          itemBuilder: (_, index) =>  Column(
              children: [
                 CartItem(index: index,),
                if(showAddRemoveButtons) const SizedBox(height: CustomSizes.spaceBtwItems,),
                if(showAddRemoveButtons)  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        SizedBox(width: 70,),
                        AddRemoveButton(),
                      ],
                    ),
                    ProductPriceText(price: controller.productModel[index].price),
                  ],
                )
              ]
          )
      ),
    );
  }
}
