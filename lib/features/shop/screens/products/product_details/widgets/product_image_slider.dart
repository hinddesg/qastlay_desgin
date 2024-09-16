import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../../common/widgets/custom_shapes/curved_edgets/curved_edges_widget.dart';
import '../../../../../../common/widgets/icons/circular_icon.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return CurvedEdgesWidget(
      child: Container(
        color: dark? CustomColors.darkerGrey : CustomColors.light ,
        child: const Stack(
          children: [
            SizedBox(height: 400,child: Padding(
              padding: EdgeInsets.all(CustomSizes.productImageRadius * 2 ),
              child: Center(child: Image(image: AssetImage(CustomImages.productImage3))),
            )),
            CustomAppbar(
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
