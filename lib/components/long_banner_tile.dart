import 'package:flutter/material.dart';

class LongBannerTile extends StatelessWidget {
  final String image;
  final Color? color;
  final Color? fontColor;
  final String titleText;
  final String text;

  const LongBannerTile({
    required this.image,
    required this.color,
    this.fontColor = Colors.white,
    required this.titleText,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Container(
        //    padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        width: 334,
        height: 100,
        child: Stack(
          children: [
            Positioned(
              top: 16,
              left: 16,
              child: Text(
                titleText,
                style: TextStyle(
                  color: fontColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              left: 16,
              bottom: 16,
              child: Row(
                children: [
                  Text(
                    text,
                    style: TextStyle(
                      color: fontColor,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: fontColor,
                    size: 20,
                  )
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                child: Image.asset(
                  image,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
