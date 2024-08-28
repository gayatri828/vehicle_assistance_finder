import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/LoginButton/login_button.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/TextInput/text_input.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/PasswordField/password_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 852,
      width: 393,
      padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'lib/src/assets/images/onlinesecurity.png', // Path to your image asset
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned(
            top: 230, // Adjust the vertical position of the text
            left: 140, // Adjust the horizontal position of the text
            child: Text(
              "Register",
              style: TextStyle(
                fontSize: 36,
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
            child: Text(
              "Let’s Get Started",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
            ),
          ),
          const Positioned(
            top: 340, // Adjust the vertical position of the column
            left: 1,
            right: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const TextInput(
                  borderRadius: 6.0,
                ),
                const SizedBox(height: 20),
                const PasswordField(
                  borderRadius: 6.0,
                ),
                SizedBox(height: 10), // Add some spacing before the text
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.blue, // Optional: Set text color
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20), // Adjust the spacing before the button
                LoginButton(),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFFA7A7A7)),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
