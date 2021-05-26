import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  CustomRaisedButton({
    required this.child,
    required this.borderRadius,
    required this.color,
    required this.height,
    required this.onPressed,
  });
  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: color,
              shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.all(Radius.circular(borderRadius)))),
          child: child,
          onPressed: onPressed),
    );
  }
}
