import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/functions/helper_function.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = CustomSizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed ,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : CustomHelperFunctions.isDarkMode(context)
            ? CustomColors.black.withOpacity(0.9)
            : CustomColors.white.withOpacity(0.9),

        borderRadius: BorderRadius.circular(100),
      ), // BoxDecoration
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, color: color, size: size)),
    );
  }
}