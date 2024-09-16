import 'package:flutter/material.dart';
import 'package:qastlay/features/shop/screens/products/ratings/rating_progress_Indicator.dart';
import 'package:qastlay/features/shop/screens/products/product_reviews/widgets/user_review_card.dart';
import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../utils/constants/sizes.dart';
import '../ratings/rating_indicator.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      /// Appbar
      appBar: const CustomAppbar(title: Text('Reviews & Ratings'), showBackArrow: true),
      ///Body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CustomSizes.defaultSpace),

          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const Text(
                "Ratings and reviews are verified and are from people who use the same type of device that you use."),
            const SizedBox(height: CustomSizes.spaceBtwItems ),
            const OverallProductRating(),
            /// Rating product
            const CustomRatingBarIndicator(rating: 3.5,),
            Text('12,611',style: Theme.of(context).textTheme.bodySmall),
            const SizedBox(height: CustomSizes.spaceEtwSections ),
            /// User Reviews List
            const UserReviewCard(),
            const UserReviewCard(),
            const UserReviewCard(),

          ]),
        ),
      ),
    );
  }
}
