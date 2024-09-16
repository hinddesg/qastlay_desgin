import 'package:flutter/material.dart';
import '../../../../../../common/widgets/custom_shapes/container/rounded_container.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';
import 'package:readmore/readmore.dart';

class UserReviewCard extends StatelessWidget {
  const UserReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              const CircleAvatar(
                  backgroundImage: AssetImage(CustomImages.reviews)),
              const SizedBox(width: CustomSizes.spaceBtwItems),
              Text('John Doe', style: Theme.of(context).textTheme.titleLarge),
            ]),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        const ReadMoreText(
          'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimExpandedText: 'show less',
          trimCollapsedText: 'show more',
          moreStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CustomColors.primary),
          lessStyle: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: CustomColors.primary),
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems ),
        RoundedContainer(
            backgroundColor: dark ? CustomColors.darkerGrey : CustomColors.grey,
            child: Padding(
                padding: const EdgeInsets.all(CustomSizes.md),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("T's Store",
                            style: Theme.of(context).textTheme.titleMedium),
                        Text('02 Nov, 2023',
                            style: Theme.of(context).textTheme.bodyMedium),
                      ],
                    ),
                    const SizedBox(height: CustomSizes.spaceBtwItems ),
                    const ReadMoreText(
                      'The user interface of the app is quite intuitive. I was able to navigate and make purchases seamlessly. Great job! ',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimExpandedText: 'show less',
                      trimCollapsedText: 'show more',
                      moreStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.primary),
                      lessStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: CustomColors.primary),
                    ),
                  ],
                ))),
        const SizedBox(height: CustomSizes.spaceEtwSections ),
      ],
    );
  }
}
