import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DiscoverPage"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Something Went Wrong"),
      ),
    );
  }
}
