import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class CustumSearchBar extends StatelessWidget {
  const CustumSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: TextField(
          style: TextStyle(color: Colors.black), // Adjust text color as needed
          decoration: InputDecoration(
            hintText: 'Search...', // Placeholder text
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey, // Adjust search icon color as needed
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                  color: Colors.grey), // Adjust border color as needed
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: const BorderSide(
                  color: Colors.grey), // Adjust focused border color as needed
            ),
          ),
        ),
      ),
    );
  }
}
