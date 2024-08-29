import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/BackIcon/back_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/GoogleButton/google_button.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/RegisterButton/register.dart';
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
      child: const Column(
        children: [
          // Header Row with BackIcon and Title
          Row(
            children: [
              BackIcon(),
              SizedBox(width: 15),
              Text(
                "Create an account",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(height: 40), // Space between header and form

          // Registration Form
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInput(
                    label: "Full Name",
                    hintText: "Enter your full name",
                  ),
                  SizedBox(height: 20),
                  TextInput(
                    label: "Email Address",
                    hintText: "Enter your email address",
                  ),
                  SizedBox(height: 20),
                  PasswordField(
                    label: "Password",
                    hintText: "Enter your password",
                  ),
                  SizedBox(height: 30),
                  Text(
                    "By signing up, you confirm that you accept our Terms of Service.",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  RegisterButton(
                    label: 'Sign up',
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      "or",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 20),
                  GoogleButton(),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      SizedBox(width: 2),
                      Text(
                        "Sign in",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF7683FB)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
