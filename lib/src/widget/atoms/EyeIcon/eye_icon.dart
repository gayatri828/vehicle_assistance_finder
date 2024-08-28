import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EyeIcon extends StatelessWidget {
  const EyeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/eyeIcon.svg';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          assetName,
          width: 18,
          height: 18,
        ),
      ),
    );
  }
}
