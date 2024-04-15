import 'package:flutter/material.dart';

class RidePage extends StatelessWidget {
  const RidePage({super.key});

  static String id = 'ride_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Ride Page',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
