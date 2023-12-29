import 'package:flutter/material.dart';

class TextFieldW extends StatelessWidget {
  const TextFieldW({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Material(
        shadowColor: const Color(0xff666464),
        elevation: 8,
        borderRadius: BorderRadius.circular(12),
        child: const TextField(
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Color(0xffFA6A02),
            ),
            suffixIcon: Icon(Icons.tune),
            hintText: "Restaurant name or a dish...",
            hintStyle: TextStyle(
                color: Color(0xff666464),
                fontSize: 16,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
    );
  }
}
