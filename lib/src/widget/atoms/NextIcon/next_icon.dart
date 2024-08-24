import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NextIcon extends StatelessWidget {
  const NextIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/nextIcon.svg';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          assetName,
          width: 25,
          height: 25,
        ),
      ),
    );
  }
}
