import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/LoginButton/login_button.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/TextInput/text_input.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/PasswordField/password_field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 852,
      width: 393,
      padding: const EdgeInsets.fromLTRB(0, 30, 10, 0),
      child: Stack(
        children: [
          // Background image, full width and height
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'lib/src/assets/images/onlinesecurity.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300, // Adjust as per the needed height
            ),
          ),
          // Main content, stacked on top of the image
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 250), // Spacing before 'Login' text
              Text(
                "Login",
                style: TextStyle(
                  fontSize: 36,
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
              const SizedBox(height: 20),
              // Align "Let’s Get Started" text to the left
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 0.0), // Adjust padding as needed
                    child: Text(
                      "Let’s Get Started",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const TextInput(
                borderRadius: 6.0,
              ),
              const SizedBox(height: 20),
              const PasswordField(
                borderRadius: 6.0,
              ),
              const SizedBox(height: 10),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: Text(
                      'Forgot password?',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const LoginButton(),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFA7A7A7),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
