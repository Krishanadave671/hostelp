import 'package:flutter/material.dart';

class MiniCard extends StatefulWidget {
  final Image img;
  final String name;
  final onTap;
  const MiniCard(
      {super.key, required this.img, required this.name, required this.onTap});

  @override
  State<MiniCard> createState() => _MiniCardState();
}

class _MiniCardState extends State<MiniCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Card(
        elevation: 20,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: 85,
          child: Column(
            children: [
              widget.img,
              Text(
                widget.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  // fontFamily: 'EuclidCircular',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
