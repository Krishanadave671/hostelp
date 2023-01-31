import 'package:flutter/material.dart';

class FilterCheckBoxWidget extends StatefulWidget {
  const FilterCheckBoxWidget(
      {super.key,
      required this.title,
      required this.onChanged,
      required this.value});
  final String title;
  final void Function(bool?)? onChanged;
  final bool value;
  @override
  State<FilterCheckBoxWidget> createState() => _FilterCheckBoxWidgetState();
}

class _FilterCheckBoxWidgetState extends State<FilterCheckBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xff645CBB),
          borderRadius: BorderRadius.circular(24)),
      child: CheckboxListTile(
        // checkColor: Color(0xff645CBB),
        activeColor: Color(0xff645CBB),
        controlAffinity: ListTileControlAffinity.leading,
        contentPadding: const EdgeInsets.all(0),
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            widget.title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        value: widget.value,
        onChanged: widget.onChanged,
      ),
    );
  }
}
