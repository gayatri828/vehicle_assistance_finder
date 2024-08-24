import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/atoms/Buttons/custom_button.dart';

class RegisterButton extends StatefulWidget {
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

  const RegisterButton({
    super.key,
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
  });

  @override
  // ignore: library_private_types_in_public_api
  _RegisterButtonState createState() => _RegisterButtonState();
}

class _RegisterButtonState extends State<RegisterButton> {
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
        label: widget.label ?? "Register",
        fontFamily: widget.fontFamily ?? 'Inter',
        // color: Colors.transparent,
        // borderColor: widget.borderColor ?? const Color(0x80000000),
        color: const Color(0xFF2F2BFF),
        textColor: widget.textColor ?? Colors.white,
        height: widget.height ?? 64,
        width: widget.width ?? 339,
        onTap: widget.onPress,
        fontsize: widget.fontSize ?? 18,
        fontweight: widget.fontWeight ?? FontWeight.w700,
        borderWidth: widget.borderWidth ?? 1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
