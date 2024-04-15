import 'package:flutter/material.dart';

class InterCityPage extends StatelessWidget {
  const InterCityPage({super.key});

  static String id = 'intercity_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Intercity Page',
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
