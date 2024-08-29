import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/MenuIcon/menu_icon.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  ServicesPageState createState() => ServicesPageState();
}

class ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
        child: const Stack(
          children: [
            MenuIcon(),
          ],
        ),
      ),
    );
  }
}
