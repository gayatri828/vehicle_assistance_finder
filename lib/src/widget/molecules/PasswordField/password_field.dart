import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/EyeIcon/eye_icon.dart';

class PasswordField extends StatefulWidget {
  final String? label;
  final double width;
  final double height;
  final String? hintText;
  final double? cursorHeight;
  final double? fontSize;
  final Color? hintColor;
  final Color? textColor;
  final TextEditingController? text;
  final double borderRadius;
  final Color? borderColor;
  final double borderWidth;
  final FontWeight hintTextFontWeight;
  final String? fontFamily;
  final Alignment? alignment;
  final TextAlign? textAlign;

  const PasswordField({
    super.key,
    this.width = 300,
    this.height = 50,
    this.hintText = "Enter Here",
    this.cursorHeight,
    this.fontSize,
    this.text,
    this.hintColor,
    this.textColor,
    this.borderRadius = 3.0,
    this.borderColor,
    this.borderWidth = 1.0,
    this.hintTextFontWeight = FontWeight.normal,
    this.fontFamily,
    this.alignment,
    this.label,
    this.textAlign,
  });

  @override
  PasswordFieldState createState() => PasswordFieldState();
}

class PasswordFieldState extends State<PasswordField> {
  late TextEditingController _controller;
  bool _obscureText = true; // To toggle password visibility

  @override
  void initState() {
    super.initState();
    _controller = widget.text ?? TextEditingController();
  }

  @override
  void dispose() {
    if (widget.text == null) {
      _controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: widget.height,
          child: TextField(
            controller: _controller,
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelText: widget.label ?? 'Password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
              ),
              contentPadding: const EdgeInsets.fromLTRB(16.0, 12.0, 50.0,
                  12.0), // Right padding added to avoid text overlap with the icon
            ),
            style: TextStyle(
              fontSize: widget.fontSize ?? 14.0,
              color: widget.textColor ?? Colors.black,
              fontFamily: widget.fontFamily ?? 'Roboto',
            ),
            cursorHeight: widget.cursorHeight,
            textAlign: widget.textAlign ?? TextAlign.start,
          ),
        ),
        Positioned(
          right: 15.0, // Adjust the position of the EyeIcon
          top: 15.0, // Centering the icon vertically in the input field
          child: GestureDetector(
            onTap: () {
              setState(() {
                _obscureText = !_obscureText; // Toggle password visibility
              });
            },
            child: Container(
                alignment: Alignment.center,
                child:
                    const EyeIcon()), // Eye icon to toggle password visibility
          ),
        ),
      ],
    );
  }
}
