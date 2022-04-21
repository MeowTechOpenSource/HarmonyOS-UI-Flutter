import 'package:flutter/material.dart';

class HMTextInput extends StatefulWidget {
  final placeholder;
  final controller;
  final maxLines;
  final prefixIcon;
  final grey;
  const HMTextInput(
      {Key? key,
      required this.placeholder,
      this.controller = null,
      this.maxLines = 1,
      this.prefixIcon = null,
      this.grey = false})
      : super(key: key);

  @override
  State<HMTextInput> createState() => _HMTextInputState();
}

class _HMTextInputState extends State<HMTextInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: (widget.maxLines == 1) ? 50 : null,
        child: TextField(
          maxLines: widget.maxLines,
          controller: widget.controller,
          decoration: InputDecoration(
            isDense: true,
            prefixIcon: widget.prefixIcon,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(35)),
              fillColor: widget.grey ? Colors.black.withOpacity(0.05): Colors.white,
              filled: true,
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(35)),
              iconColor: Colors.black,
              prefixIconColor: Colors.black,
              alignLabelWithHint: true,
              hintStyle: TextStyle(color: Colors.black.withOpacity(0.6)),
              hintText: widget.placeholder),
        ),
      ),
    );
  }
}
