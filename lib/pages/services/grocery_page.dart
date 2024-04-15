import 'package:flutter/material.dart';

class GroceryPage extends StatelessWidget {
  const GroceryPage({super.key});

  static String id = 'grocery_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Grocery Page',
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
