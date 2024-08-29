import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextIcon extends StatelessWidget {
  final Alignment? alignment;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;
  final Color? backgroundColor; // New color parameter

  const NextIcon({
    super.key,
    this.alignment,
    this.onTap,
    this.borderRadius,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/nextIcon.svg';
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: Align(
        alignment: alignment ?? Alignment.centerRight,
        child: InkWell(
          onTap: onTap,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              borderRadius: borderRadius ?? BorderRadius.circular(8.0),
              color: backgroundColor ?? Colors.grey,
            ),
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              assetName,
            ),
          ),
        ),
      ),
    );
  }
}
