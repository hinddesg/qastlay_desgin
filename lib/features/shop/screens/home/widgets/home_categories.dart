import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../models/home_view_model.dart';
import '../../all_products/all_products.dart';
import '../../sub_categories/all_product_to_sub_category.dart';
import '../../sub_categories/sub_categories.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      builder: (controller) =>controller.loading.value ?
      const Center(child: CircularProgressIndicator()): SizedBox(
        height: 100,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.categoryModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return VerticalImageText(
              title: controller.categoryModel[index].name,
              image: controller.categoryModel[index].image,
              onTap: () => Get.to(() => const AllProductToSubCategory()),
            );
          },
        ),
      ),
    );
  }
}