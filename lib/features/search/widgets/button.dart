import 'package:flutter/material.dart';
import 'package:hostelp/features/search/utils.dart';

class Button extends StatefulWidget {
  const Button({
    super.key,
    required this.title,
    this.leftCircularBorder = false,
    this.rightCircularBorder = false,
    required this.onTap,
  });
  final String title;
  final bool leftCircularBorder;
  final bool rightCircularBorder;
  final VoidCallback onTap;
  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        boxShadow: [
          Utils.buttonAnimationBoolean
              ? const BoxShadow(blurRadius: 20.0, color: Color(0xff5581fb))
              : const BoxShadow(blurRadius: 0.0, color: Color(0xff5581fb)),
        ],
        color: Utils.buttonAnimationBoolean
            ? const Color(0xff5581fb)
            : const Color(0xff232f21),
        borderRadius: BorderRadius.circular(24),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: widget.onTap,
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.3,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.title,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
