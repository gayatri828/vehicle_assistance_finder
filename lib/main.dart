import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/AlertIcon/alert_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/BackIcon/back_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/Car/car_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/CircleIcon/circle_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/CloseIcon/close_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/EyeIcon/eye_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/HomeIcon/home_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/LocationIcon/location_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/LogoutIcon/logout_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/MenuIcon/menu_icon.dart';
// import 'package:vehicle_assistance_finder/src/widget/atoms/NextIcon/next_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/NotificationIcon/notification_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/ProfileIcon/profile_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/SearchIcon/search_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/ServiceIcon/service_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/StarIcon/star_icon.dart';

import 'package:vehicle_assistance_finder/src/widget/atoms/TextInput/text_input.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/PasswordField/password_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Custom Button Example',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          // child: RegisterButton(),
          // child: LoginButton(),
          // child: TextInput(),
          // child: EyeIcon(),
          // child: CircleIcon(),
          // child: CarIcon(),
          // child: ProfileIcon(),
          // child: HomeIcon(),
          // child: ServiceIcon(),
          // child: StarIcon(),
          // child: LocationIcon(),
          // child: BackIcon(),
          // child: SearchIcon(),
          // child: MenuIcon(),
          // child: NotificationIcon(),
          // child: NextIcon(),
          // child: LogoutIcon(),
          // child: AlertIcon(),
          // child: CloseIcon(),
          // child: PasswordField(),
          ),
    );
  }
}
