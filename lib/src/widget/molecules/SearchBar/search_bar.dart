import 'package:flutter/material.dart';
import 'package:vehicle_assistance_finder/src/widget/atoms/SearchIcon/search_icon.dart';

class SearchInputBox extends StatelessWidget {
  const SearchInputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 0),
      decoration: BoxDecoration(
        color: const Color(0x0F2F80ED),
        borderRadius: BorderRadius.circular(16),
      ),
      alignment: Alignment.center,
      child: const TextField(
        autofocus: false,
        style: TextStyle(
          fontSize: 12,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: "search",

          hintStyle: TextStyle(color: Color(0xFF6E6893), fontSize: 18),
          contentPadding: EdgeInsets.symmetric(
              vertical: 10), // Adjust for vertical centering
          border: InputBorder.none,
          prefixIcon: Padding(
            padding: EdgeInsets.only(top: 2), // Adjust for icon alignment
            child: SearchIcon(),
          ),
        ),
      ),
    );
  }
}
