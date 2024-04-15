import 'package:flutter/material.dart';

class BannerTile extends StatelessWidget {
  final Function()? onTap;
  final double? width;
  final double? height;
  final String image;
  final String titleText;
  final String text;

  const BannerTile({
    required this.onTap,
    this.height = 128,
    this.width = 232,
    required this.image,
    required this.text,
    required this.titleText,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(right: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Text(
                  titleText,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Icon(Icons.arrow_forward)
              ],
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
