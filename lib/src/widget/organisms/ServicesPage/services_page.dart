import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/MenuIcon/menu_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/NotificationIcon/notification_icon.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/FooterMenuBar/menu_bar.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/RSAService/rsa_service.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/SearchBar/search_bar.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/VehicleServices/vehicle_services.dart';
import 'package:vehicle_assistance_finder/src/widget/molecules/WorkshopDetails/workshop_details.dart';

class ServicesPage extends StatefulWidget {
  const ServicesPage({super.key});

  @override
  ServicesPageState createState() => ServicesPageState();
}

class ServicesPageState extends State<ServicesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.fromLTRB(20, 30, 20,
                  70), // Add bottom padding to avoid overlap with FooterMenuBar
              children: const [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [MenuIcon(), NotificationIcon()],
                ),
                SizedBox(height: 20),
                SearchInputBox(),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Book a service",
                    style: TextStyle(
                      fontSize: 16, // Adjusted font size for better readability
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    VehicleServices(),
                    SizedBox(width: 30),
                    RSAServices()
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Near you",
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "See all",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFA7A7A7)),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                WorkshopDetails(),
                SizedBox(height: 20),
                WorkshopDetails(
                  name: "Motorcycle Workshop",
                  description: "Motorcycle repair shop in Maitidevi",
                ),
                SizedBox(height: 20),
                WorkshopDetails(
                  name: "Car & Motorcycle Workshop",
                  description: "Car &Motorcycle repair shop in Maitidevi",
                ),
              ],
            ),
          ),
          const FooterMenuBar(),
        ],
      ),
    );
  }
}
