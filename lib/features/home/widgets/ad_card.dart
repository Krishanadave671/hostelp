import 'package:flutter/material.dart';

class AdCard extends StatefulWidget {
  final String link;
  const AdCard({super.key, required this.link});

  @override
  State<AdCard> createState() => _AdCardState();
}

class _AdCardState extends State<AdCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(widget.link),
        ),
        borderRadius: const BorderRadius.all(Radius.circular(24)),
      ),
    );
  }
}
