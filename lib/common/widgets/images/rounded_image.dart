import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import '../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.onPressed,
    this.padding,
    this.border,
    this.width,
    this.height,
    this.imageUrl, // Nullable to allow asset images
    this.assetImage, // Added to support asset images
    this.applyImageRadius = true,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.borderRadius = CustomSizes.md,
  });

  final double? width, height;
  final String? imageUrl; // Nullable for network images
  final String? assetImage; // Nullable for asset images
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius
              ? BorderRadius.circular(borderRadius)
              : BorderRadius.zero,
          child: imageUrl != null
              ? Image.network(
            imageUrl!,
            fit: fit,
          )
              : assetImage != null
              ? Image.asset(
            assetImage!,
            fit: fit,
          )
              : const Icon(Icons.image_not_supported), // Fallback for no image
        ),
      ),
    );
  }
}
