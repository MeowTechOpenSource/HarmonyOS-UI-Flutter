import 'package:flutter/material.dart';

class HMButton extends StatelessWidget {
  final Function onPressed;
  final Widget child;

  late double width;
  late double height;
  late Color textColor;
  late double borderRadius;
  late bool center;
  late bool isDanger;
  HMButton({
    Key? key,
    required this.onPressed,
    required this.child,
    this.width = 90,
    this.height = 37,
    this.textColor = const Color.fromARGB(255, 10, 89, 247),
    this.borderRadius = 25,
    this.center = false,
    this.isDanger = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Material(
        textStyle: TextStyle(
            color: isDanger ? Color.fromARGB(255, 232, 64, 38):textColor,
            fontWeight: FontWeight.w500),
        color: Colors.black.withOpacity(0.05),
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
