import 'package:flutter/material.dart';

class HMElevatedButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;

  late double width;
  late double height;
  late Color textColor;
  late double borderRadius;
  late bool center;
  HMElevatedButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.width = 90,
    this.height = 37,
    this.textColor = Colors.white,
    this.borderRadius = 25,
    this.center = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Material(
        textStyle: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500),
        color: const Color(0xFF0A59F7),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: InkWell(
          onTap: () => onPressed(),
          splashColor: Color.fromARGB(0, 255, 94, 94),
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: center ? Center(child: child,) : child,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
