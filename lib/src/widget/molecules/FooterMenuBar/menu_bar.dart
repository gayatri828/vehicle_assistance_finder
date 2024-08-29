import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/Car/car_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/HomeIcon/home_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/ProfileIcon/profile_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/ServiceIcon/service_icon.dart';

class FooterMenuBar extends StatefulWidget {
  const FooterMenuBar({super.key});

  @override
  FooterMenuBarState createState() => FooterMenuBarState();
}

class FooterMenuBarState extends State<FooterMenuBar> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double
          .infinity, // Ensures the Row takes up the full width of the screen
      child: Center(
        child: Row(
          mainAxisSize:
              MainAxisSize.min, // Shrinks the Row to the size of its children
          mainAxisAlignment:
              MainAxisAlignment.center, // Centers items in the Row
          crossAxisAlignment:
              CrossAxisAlignment.center, // Vertically centers the icons
          children: [
            HomeIcon(),
            SizedBox(width: 20), // Spacing between icons
            CarIcon(),
            SizedBox(width: 20),
            ServiceIcon(),
            SizedBox(width: 20),
            ProfileIcon(),
          ],
        ),
      ),
    );
  }
}
