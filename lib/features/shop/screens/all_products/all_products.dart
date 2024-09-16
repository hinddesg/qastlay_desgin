import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:qastlay/common/widgets/appbar/appbar.dart';
import 'package:qastlay/common/widgets/layouts/grid_layout.dart';
import 'package:qastlay/common/widgets/products/products_cart/product_cart_vertical.dart';

import '../../../../common/widgets/products/sortable/sortable_products.dart';
import '../../../../utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title:Text('Popular Products'),showBackArrow: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomSizes.defaultSpace),
          child: SortableProducts()

        ),
      ),
    );
  }
}
