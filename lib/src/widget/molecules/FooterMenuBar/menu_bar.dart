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
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.white, // Optional: Set background color
        border: Border(
          top: BorderSide(color: Colors.black.withOpacity(0.2)),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Shadow color
            blurRadius: 4.0, // Spread radius
            offset: Offset(0, 2), // Offset of the shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment
            .spaceBetween, // Distributes space evenly between items
        children: const [
          HomeIcon(),
          CarIcon(),
          ServiceIcon(),
          ProfileIcon(),
        ],
      ),
    );
  }
}
