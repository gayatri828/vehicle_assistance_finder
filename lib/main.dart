import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/SearchBar/search_bar.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/WorkshopDetails/workshop_details.dart';
import 'package:vehicle_assistance_finder/src/widget/organisms/HomePage/home_page.dart';
// import 'package:vehicle_assistance_finder/src/widget/organisms/HomePage/home_page.dart';
// import 'package:vehicle_assistance_finder/src/widget/organisms/Login/login.dart';
// import 'package:vehicle_assistance_finder/src/widget/organisms/Register/register.dart';
// import 'package:vehicle_assistance_finder/src/widget/organisms/SelectVehicle/select_vehicle.dart';
import 'package:vehicle_assistance_finder/src/widget/organisms/ServicesPage/services_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Vehicle Assistance Finder',
      debugShowCheckedModeBanner: false, // Remove the debug banner
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
      backgroundColor: Colors.white, // Set full screen color to white
      body: Center(
        // Uncomment the desired widget to display
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
        // child: Login(),
        // child: Register(),
        // child: CarSelect(),
        // child: SelectMotorcycle()
        // child: SelectVehicle(),
        // child: HomePage(),
        child: ServicesPage(),
        // child: SearchInputBox(),
        // child: VehicleServices(),
        // child: RSAServices(),
        // child: FooterMenuBar()
        // child: WorkshopDetails(),
      ),
    );
  }
}
