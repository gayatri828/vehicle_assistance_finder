import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/LoginButton/login_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 852,
      width: 393,
      color: Colors.white,
      child: Stack(
        children: [
          // Background image
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'lib/src/assets/images/home.png', // Path to your image asset
              fit: BoxFit.cover,
              height: 300, // Adjust height as needed
              width: double.infinity,
            ),
          ),
          // Main content in a column
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 270),
              Text(
                "Welcome to the app",
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
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                child: Text(
                  "We’re excited to help you book and manage your service appointments with ease",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 104, 104, 122),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(), // Push content to the bottom
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    LoginButton(
                      width: 339,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Create an account",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 50), // Add bottom spacing if needed
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
