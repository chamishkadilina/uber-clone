import 'package:flutter/material.dart';

class EatsTab extends StatefulWidget {
  const EatsTab({super.key});

  @override
  State<EatsTab> createState() => _EatsTabState();
}

class _EatsTabState extends State<EatsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade600,
      child: const Center(
        child: Text(
          'Eats Tab',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
