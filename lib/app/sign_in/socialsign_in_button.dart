import 'package:flutter/material.dart';
import 'package:time_tracker/reusable_widgets/custom_raisedbutton.dart';

class SocialSignInButton extends CustomRaisedButton {
  SocialSignInButton(
      {required String text,
      required Color color,
      required Color textColor,
      required VoidCallback onPressed,
      required String assetName,
      required double borderRadius})
      : super(
            height: 50,
            borderRadius: borderRadius,
            color: color,
            onPressed: onPressed,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  assetName,
                ),
                Text(
                  text,
                  style: TextStyle(color: textColor),
                ),
                Opacity(
                  opacity: 0,
                  child: Image.asset(assetName),
                ),
              ],
            ));
}
