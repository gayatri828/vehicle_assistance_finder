import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'lib/src/assets/icons/notificationIcon.svg';
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
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
