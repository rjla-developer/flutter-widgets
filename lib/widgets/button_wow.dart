import 'package:flutter/material.dart';

class ButtonWow extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final double borderRadius;
  final EdgeInsetsGeometry padding;
  final TextStyle textStyle;
  final double elevation;
  final Gradient gradient;

  const ButtonWow(
      {required this.text,
      required this.onPressed,
      this.color = Colors.green,
      this.borderRadius = 8.0,
      this.padding =
          const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      this.textStyle = const TextStyle(fontSize: 16.0, color: Colors.white),
      this.elevation = 2.0,
      this.gradient = const LinearGradient(
        colors: [
          Color.fromARGB(255, 69, 168, 46),
          Color.fromARGB(255, 238, 246, 90)
        ],
      )});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(borderRadius),
        child: Ink(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(borderRadius),
            gradient: gradient,
          ),
          padding: padding,
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ),
      ),
    );
  }
}
