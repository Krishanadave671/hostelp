import 'package:flutter/material.dart';

class BigGap extends StatelessWidget {
  const BigGap({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.025,
    );
  }
}
