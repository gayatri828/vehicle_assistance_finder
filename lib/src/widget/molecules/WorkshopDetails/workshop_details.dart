import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/CircleIcon/circle_icon.dart';

class WorkshopDetails extends StatefulWidget {
  final String name;
  final String description;

  const WorkshopDetails({
    super.key,
    this.name = 'Puja Motorcycle Workshop', // Default value
    this.description = 'Motorcycle repair shop in Malldevi', // Default value
  });

  @override
  WorkshopDetailsState createState() => WorkshopDetailsState();
}

class WorkshopDetailsState extends State<WorkshopDetails> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3), // Shadow color
            blurRadius: 6.0, // Spread radius
            offset: const Offset(0, 4), // Offset of the shadow
          ),
        ],
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Icon(Icons.motorcycle, color: Colors.white),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            widget.description,
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Icon(Icons.access_time, color: Colors.grey[400], size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '8am to 9pm',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.star, color: Colors.yellow, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '4.5',
                      style: TextStyle(color: Colors.grey[400]),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                const Text(
                  'Currently available for service',
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
          ),
          const Positioned(
            top: 16,
            right: 4, // Adjusted to fit inside the container
            child: CircleIcon(), // Non-selectable circle icon
          ),
        ],
      ),
    );
  }
}
