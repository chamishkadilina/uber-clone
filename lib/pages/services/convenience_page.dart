import 'package:flutter/material.dart';

class ConveniencePage extends StatelessWidget {
  const ConveniencePage({super.key});

  static String id = 'convenience_page';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            'Convenience Page',
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
