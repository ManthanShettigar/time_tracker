import 'package:flutter/material.dart';
import 'package:time_tracker/reusable_widgets/custom_raisedbutton.dart';

class SignInButton extends CustomRaisedButton {
  SignInButton(
      {required String text,
      required Color color,
      required Color textColor,
      required VoidCallback onPressed,
      required double borderRadius})
      : super(
          height: 40,
          borderRadius: borderRadius,
          color: color,
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
            ),
          ),
        );
}
