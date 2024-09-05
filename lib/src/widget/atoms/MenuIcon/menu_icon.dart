import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuIcon extends StatelessWidget {
  const MenuIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/menuIcon.svg';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {},
        child: SvgPicture.asset(
          assetName,
          width: 15,
          height: 15,
        ),
      ),
    );
  }
}
