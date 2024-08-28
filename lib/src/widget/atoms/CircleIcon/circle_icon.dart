import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleIcon extends StatelessWidget {
  final Alignment? alignment; // Use single question mark for nullable type
  const CircleIcon({super.key, this.alignment});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/circleIcon.svg';
    return Align(
      alignment: alignment ??
          Alignment.center, // Use the alignment parameter or default to center
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: InkWell(
          onTap: () {
            // Define the action for the onTap event here
          },
          child: SvgPicture.asset(
            assetName,
            width: 18,
            height: 18,
          ),
        ),
      ),
    );
  }
}
