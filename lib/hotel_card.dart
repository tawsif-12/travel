import 'package:flutter/material.dart';
import 'app_styles.dart';

class HotelCard extends StatelessWidget {
  final String image;
  final String title;

  const HotelCard({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(image, fit: BoxFit.cover, height: 120, width: 180),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title, style: Styles.headLineStyle3),
          ),
        ],
      ),
    );
  }
}
