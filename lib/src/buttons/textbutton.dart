import 'package:flutter/material.dart';

class HMTextButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;

  late double width;
  late double height;
  late Color textColor;
  late double borderRadius;
  late bool center;
  HMTextButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.width = 90,
    this.height = 37,
    this.textColor = const Color.fromARGB(255, 10, 89, 247),
    this.borderRadius = 25,
    this.center = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Material(
        textStyle: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500),
        color: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius)),
        child: InkWell(
          onTap: () => onPressed(),
          splashColor: Color.fromARGB(0, 255, 94, 94),
          child: Padding(
            padding: const EdgeInsets.all(13),
            child: center ? Center(child: child,) : child,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }
}
