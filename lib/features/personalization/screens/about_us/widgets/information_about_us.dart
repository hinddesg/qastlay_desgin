import 'package:flutter/cupertino.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class InformationAboutUs extends StatelessWidget {
  const InformationAboutUs({
    super.key, required this.text, required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 15, color: CustomColors.primary),
        const SizedBox(width: CustomSizes.sm),
        Text(text),
        const SizedBox(height: CustomSizes.spaceEtwSections),

      ],
    );
  }
}
