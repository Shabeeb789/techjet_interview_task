import 'package:flutter/material.dart';

class DishCategory extends StatelessWidget {
  final String text;
  final String imagetext;
  const DishCategory({super.key, required this.imagetext, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            color: const Color.fromARGB(64, 102, 100, 100),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(imagetext),
        ),
        Text(
          text,
          style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
              color: Color(0xff666464)),
        )
      ],
    );
  }
}
