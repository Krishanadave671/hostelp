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
      width: 170,
      decoration: BoxDecoration(
          // color: const Color(0xff232f21),
          borderRadius: BorderRadius.circular(24)),
      child: Expanded(
        child: CheckboxListTile(
          selected: widget.value,
          selectedTileColor: const Color(0xff5581fb),
          tileColor: const Color(0xff232f21),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          checkboxShape: const OvalBorder(),
          activeColor: const Color(0xff5581fb),
          checkColor: const Color(0xfff5f5f5),
          controlAffinity: ListTileControlAffinity.leading,
          contentPadding: const EdgeInsets.all(0),
          title: Padding(
            padding: const EdgeInsets.only(
              right: 8.0,
              top: 8.0,
              bottom: 8.0,
            ),
            child: Text(
              widget.title,
              softWrap: false,
              style: Theme.of(context).textTheme.labelMedium,
            ),
          ),
          value: widget.value,
          onChanged: widget.onChanged,
        ),
      ),
    );
  }
}
