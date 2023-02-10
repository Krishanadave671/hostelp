import 'package:flutter/material.dart';

class SearchFilterButton extends StatefulWidget {
  const SearchFilterButton({
    super.key,
    required this.title,
    this.leftCircularBorder = false,
    this.rightCircularBorder = false,
    required this.onTap,
    this.isSelected = false,
  });
  final String title;
  final bool leftCircularBorder;
  final bool rightCircularBorder;
  final VoidCallback onTap;
  final bool isSelected;
  @override
  State<SearchFilterButton> createState() => _SearchFilterButtonState();
}

class _SearchFilterButtonState extends State<SearchFilterButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        boxShadow: [
          widget.isSelected
              ? const BoxShadow(blurRadius: 20.0, color: Color(0xff5581fb))
              : const BoxShadow(blurRadius: 0.0, color: Color(0xff5581fb)),
        ],
        color: widget.isSelected
            ? const Color(0xff5581fb)
            : const Color(0xff232f21),
        borderRadius: BorderRadius.horizontal(
          left: widget.leftCircularBorder
              ? const Radius.circular(24)
              : const Radius.circular(0),
          right: widget.rightCircularBorder
              ? const Radius.circular(24)
              : const Radius.circular(0),
        ),
      ),
      child: InkWell(
        borderRadius: BorderRadius.horizontal(
          left: widget.leftCircularBorder
              ? const Radius.circular(24)
              : const Radius.circular(0),
          right: widget.rightCircularBorder
              ? const Radius.circular(24)
              : const Radius.circular(0),
        ),
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
