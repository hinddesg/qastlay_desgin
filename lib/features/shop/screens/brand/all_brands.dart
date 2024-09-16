import 'package:flutter/material.dart';
import 'package:qastlay/common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';
import 'package:get/get.dart';
import 'brand_products.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(title: Text('Brand'), showBackArrow: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),

          child: Column(children: [
            /// Heading
            const SectionHeading(title: 'Brands', showActionButton: false),
            const SizedBox(height: CustomSizes.spaceBtwItems),

            ///-- Brands
            GridLayout(
              itemCount: 10,
              mainAxisExtent: 80,
              itemBuilder: (context, index) => BrandCard(
                showBorder: true,
                onTap: () => Get.to(() => const BrandProducts()),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
