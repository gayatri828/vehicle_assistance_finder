import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/LoginButton/login_button.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/TextInput/text_input.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/PasswordField/password_field.dart';
import 'package:vehicle_assistance_finder/src/widget/organisms/Login/login.dart';

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
      padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/src/assets/images/home.png', // Path to your image asset
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned(
            top: 250, // Adjust the vertical position of the text
            left: 80, // Adjust the horizontal position of the text
            child: Text(
              "Welcome to the app",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: Colors.black,
                shadows: [
                  Shadow(
                    blurRadius: 10.0,
                    color: Colors.grey.withOpacity(0.9),
                    offset: Offset(0, 2),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            top: 300, // Adjust the vertical position of the text
            left: 20,
            child: Text(
              "We re excited to help you book and manage your service appointments with ease",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
            ),
          ),
          const Positioned(
            top: 500, // Adjust the vertical position of the column
            // left: 25,
            right: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LoginButton(
                  width: 339,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Create an account",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
