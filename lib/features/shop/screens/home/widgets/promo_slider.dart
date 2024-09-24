import 'package:flutter/cupertino.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:qastlay/features/shop/controllers/home_controller.dart';
import '../../../../../common/widgets/custom_shapes/container/circular_container.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((banner) {
            // Determine if the banner is an asset or a network image
            bool isAsset = banner.startsWith('assets/');
            return RoundedImage(
              imageUrl: isAsset ? null : banner, // Use null for network check
              assetImage: isAsset ? banner : null, // Use asset for assets
            );
          }).toList(),
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Center(
          child: Obx(
                () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? CustomColors.primary
                        : CustomColors.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
