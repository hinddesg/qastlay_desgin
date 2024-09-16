import 'package:flutter/material.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/functions/helper_function.dart';


class FormDivider extends StatelessWidget {
  const FormDivider({
    super.key,
    required this.dividerText,
  });
  final String dividerText;

  @override
  Widget build (BuildContext context) {

    final dark = CustomHelperFunctions.isDarkMode(context);
    return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Flexible (child: Divider (color: dark? CustomColors.darkGrey: CustomColors.grey, thickness: 0.5, indent: 60, endIndent: 5)),
    Text(dividerText, style: Theme.of(context).textTheme.labelMedium),
    Flexible (child: Divider (color: dark? CustomColors.darkGrey: CustomColors.grey, thickness: 0.5, indent: 5, endIndent: 60)),
   ]);
  }
}

