import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/CircleIcon/circle_icon.dart';

class CarSelect extends StatefulWidget {
  const CarSelect({super.key});

  @override
  CarSelectState createState() => CarSelectState();
}

class CarSelectState extends State<CarSelect> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 150,
      // padding: EdgeInsets.only(bottom: 6.0),
      decoration: BoxDecoration(
        color: Colors.white, // Background color
        border: Border.all(color: const Color(0xFF000000)), // Border color
        borderRadius: BorderRadius.circular(15.0), // Rounded corners
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleIcon(
            alignment: Alignment.topRight,
          ),
          Image.asset(
            'lib/src/assets/images/car.png', // Path to your image
            height: 70, // Set the height of the image
            width: 70, // Set the width of the image
          ),
          // Space between image and text
          const Text(
            'Car', // Text inside the container
            style: TextStyle(
              fontSize: 16, // Font size of the text
              fontWeight: FontWeight.bold, // Font weight of the text
              color: Colors.black, // Color of the text
            ),
          ),
        ],
      ),
    );
  }
}
