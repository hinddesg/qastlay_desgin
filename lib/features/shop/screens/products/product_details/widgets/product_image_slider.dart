import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../../common/widgets/custom_shapes/curved_edgets/curved_edges_widget.dart';
import '../../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';
import '../../../../models/home_view_model.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key, required this.index,
  });
final int index;

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return CurvedEdgesWidget(
      child: Container(
        color: dark? CustomColors.darkerGrey : CustomColors.light ,
        child:  Stack(
          children: [
            SizedBox(height: 400,child: Padding(
              padding: const EdgeInsets.all(CustomSizes.productImageRadius * 2 ),
              child: Center(child: Image.network(controller.productModel[index].image)),
            )),
            const CustomAppbar(
              showBackArrow: true,
              actions: [
                CircularIcon(icon: Iconsax.heart5,color: Colors.red,)
              ],
            )
          ],
        ),
      ),
    );
  }
}
