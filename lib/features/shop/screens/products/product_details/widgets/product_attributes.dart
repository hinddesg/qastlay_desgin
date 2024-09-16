import 'package:flutter/material.dart';
import '../../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/functions/helper_function.dart';
import 'choice_chip.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = CustomHelperFunctions.isDarkMode(context);

    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SectionHeading (title: 'Colors',showActionButton: false,),
              const SizedBox (height: CustomSizes.spaceBtwItems / 2),
              Wrap(
                spacing: 8,
                children: [
                  CustomChoiceChip(text: 'Black', selected: false, onSelected: (value){}),
                  CustomChoiceChip(text: 'Grey', selected: true, onSelected: (value){}),
                  CustomChoiceChip (text: 'White', selected: false, onSelected: (value){}),
                ],
              )
            ],
    );
  }
}
