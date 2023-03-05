import 'package:flutter/material.dart';

Widget buildElevatedTextButton({
  required Color backgroundColor,
  double colorOpacity = 1,
  onPressedFunction,
  Color titleOfButtonColor = Colors.white,
  required String titleOfButton,
  Color borderColor = Colors.black,
  double borderColorOpacity = 1,
  double widthOfBorder = 0.0,
  double textSize = 16.00,
  double? buttonWidth,
}) =>
    Container(
      width: buttonWidth,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          backgroundColor: MaterialStateProperty.all(
              backgroundColor.withOpacity(colorOpacity)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
                  color: borderColor.withOpacity(borderColorOpacity),
                  width: widthOfBorder),
            ),
          ),
        ),
        onPressed: onPressedFunction,
        child: Text(
          titleOfButton,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: textSize,
              fontFamily: "JostBold",
              color: titleOfButtonColor),
        ),
      ),
    );
