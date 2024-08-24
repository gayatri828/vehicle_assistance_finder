import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/homeIcon.svg';
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
