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
      color: Colors.blue,
      child: const Center(
        child: Text('Edit Location Tab'),
      ),
    );
  }
}
