import 'package:flutter/material.dart';

class CustomCard extends StatefulWidget {
  Image img;
  String name;
  CustomCard({super.key, required this.img, required this.name});

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(8.0),
        width: 85,
        child: Column(
          children: [
            widget.img,
            Text(
              widget.name,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontFamily: 'EuclidCircular',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
