import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../../../utils/constants/colors.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingBarIndicator extends StatelessWidget {
  const CustomRatingBarIndicator({
    super.key, required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating:rating,
      itemSize: 20,
      unratedColor: CustomColors.grey,

      itemBuilder: (_, __) =>
      const Icon (
          Iconsax.star1, color: CustomColors.primary
      ),
    );

  }
}