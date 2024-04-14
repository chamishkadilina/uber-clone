import 'package:flutter/material.dart';

class PickupTimeButton extends StatelessWidget {
  final Function()? onTap;
  const PickupTimeButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(64),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(Icons.access_time_filled_rounded),
              SizedBox(width: 4),
              Text(
                'Now',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 4),
              Icon(Icons.keyboard_arrow_down_sharp),
            ],
          ),
        ),
      ),
    );
  }
}
