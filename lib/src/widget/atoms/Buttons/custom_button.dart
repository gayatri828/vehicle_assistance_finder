// atoms/Buttons/custom_button.dart
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onTap;
  final Color? color;
  final double? height;
  final Color? borderColor;
  final double? width;
  final Color? textColor;
  final Color? backgroundColor;
  final FontWeight? fontweight;
  final double? fontsize;
  final String? fontFamily;
  final BorderRadius? borderRadius;
  final TextAlign? textAlign;
  final double? borderWidth;
  final Widget? icon;
  final Alignment? alignment;

  const CustomButton(
      {super.key,
      required this.label,
      this.color,
      this.height,
      this.backgroundColor,
      this.width,
      this.onTap,
      this.borderColor,
      this.textColor,
      this.fontsize,
      this.borderRadius,
      this.fontFamily,
      this.fontweight,
      this.textAlign,
      this.borderWidth,
      this.icon,
      this.alignment});

  @override
  Widget build(BuildContext context) {
    final color = this.color ?? const Color(0xFF2f80ed);
    final height = this.height ?? 48.0;
    final width = this.width ?? 150.0;
    final borderColor = this.borderColor ?? Colors.transparent;
    final textColor = this.textColor ?? Colors.white;
    final borderWidth = this.borderWidth ?? 0.5;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius ?? BorderRadius.circular(8),
          border: Border.all(color: borderColor, width: borderWidth),
        ),
        alignment: alignment ?? Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              icon!,
              const SizedBox(width: 8),
            ],
            Text(
              label,
              textAlign: textAlign ?? TextAlign.center,
              style: TextStyle(
                fontSize: fontsize ?? 16,
                fontWeight: fontweight ?? FontWeight.bold,
                color: textColor,
                fontFamily: fontFamily,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
