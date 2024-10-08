import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/Buttons/custom_button.dart';

class GoogleButton extends StatefulWidget {
  final VoidCallback? onPress;
  final String? label;
  final double? height;
  final double? width;
  final Color? borderColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final Color? textColor;
  final double? borderWidth;
  final BorderRadius? borderRadius;
  final Alignment? alignment;

  const GoogleButton(
      {super.key,
      this.fontFamily,
      this.onPress,
      this.label,
      this.width,
      this.height,
      this.fontSize,
      this.borderColor,
      this.borderWidth,
      this.fontWeight,
      this.textColor,
      this.borderRadius,
      this.alignment});

  @override
  // ignore: library_private_types_in_public_api
  _GoogleButtonState createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<GoogleButton> {
  final ValueNotifier<bool> _isHovered = ValueNotifier(false);

  @override
  void dispose() {
    _isHovered.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => _isHovered.value = true,
      onExit: (_) => _isHovered.value = false,
      child: CustomButton(
        image: Image.asset(
          'lib/src/assets/images/googlelogo.png', // Path to your image asset
          // color: Colors.white,
          width: 24, // Adjust size as needed
        ),
        label: widget.label ?? "Continue with Google",
        fontFamily: widget.fontFamily ?? 'Inter',
        color: const Color(0xFF2F2BFF),
        alignment: widget.alignment,
        textColor: widget.textColor ?? Colors.white,
        height: widget.height ?? 50,
        width: widget.width ?? double.infinity, // Set to full width
        onTap: widget.onPress,
        fontsize: widget.fontSize ?? 18,
        fontweight: widget.fontWeight ?? FontWeight.w700,
        borderWidth: widget.borderWidth ?? 1,
        textAlign: TextAlign.center,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(16),
      ),
    );
  }
}
