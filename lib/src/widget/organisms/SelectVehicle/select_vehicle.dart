import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/BackIcon/back_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/NextIcon/next_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/ChooseBike/select_motorcycle.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/ChooseCar/car.dart';

class SelectVehicle extends StatefulWidget {
  const SelectVehicle({super.key});

  @override
  SelectVehicleState createState() => SelectVehicleState();
}

class SelectVehicleState extends State<SelectVehicle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
        child: Stack(
          children: [
            const BackIcon(),
            Positioned.fill(
              child: Image.asset(
                'lib/src/assets/images/vehicles.png', // Path to your image asset
                alignment: Alignment.topCenter,
                // Ensure the image covers the entire area
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 210,
                  ),
                  Text(
                    "Choose your vehicle",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.grey.withOpacity(0.9),
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Please select a vehicle. It will help us find your service faster.",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 104, 104, 122),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 80),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CarSelect(),
                      SizedBox(
                          width:
                              40), // Space between car and motorcycle widgets
                      SelectMotorcycle(),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const NextIcon(
                    alignment: Alignment.bottomRight,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
