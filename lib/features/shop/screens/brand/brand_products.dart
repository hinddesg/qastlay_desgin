import 'package:flutter/material.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      appBar: CustomAppbar(title:Text('DELL'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: Column(
            children: [
              ///Brand Details
              BrandCard(showBorder: true),
              SizedBox(height: CustomSizes.spaceEtwSections),
              SortableProducts(),
              ]
          ),

        ),
      ),
    );
  }
}
