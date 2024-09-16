import 'package:flutter/material.dart';
import '../../../../../common/widgets/texts/section_heading.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class AboutUsWidget extends StatelessWidget {
  const AboutUsWidget({
    super.key, required this.header, required this.text, required this.icon,
  });
final String header;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, size: 25, color: CustomColors.primary),
            const SizedBox(width: CustomSizes.sm),
            SectionHeading(
              title: header,
              showActionButton: false,
            )
          ],
        ),
        const SizedBox(height: CustomSizes.spaceBtwItems),
        Text(text,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
