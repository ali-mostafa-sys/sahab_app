import 'dart:ffi';

import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  AppButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onTap,
    required this.text,
    required this.color,
    required this.radius,
    required this.fontSize,
    required this.fontFamily,
    required this.textColor,
    required this.fontWeight,
  }) : super(key: key);
  double width;
  double height;
  double radius;
  void Function()? onTap;
  Color color;
  Color textColor;
  String text;
  String fontFamily;
  double fontSize;
  FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(radius))),
        child: Center(
            child: Text(
          text,
          style: TextStyle(
              fontSize: fontSize,
              fontFamily: fontFamily,
              color: textColor,
              fontWeight: fontWeight),
        )),
      ),
    );
  }
}
