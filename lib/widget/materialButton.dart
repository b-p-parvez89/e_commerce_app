// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../utils/color.dart';

class MButton extends StatelessWidget {
  final String text;
  final double minWidth;
  late Color? tColor;
  late Color? bColor;
  late var onTap;

  MButton(
      {super.key,
      required this.text,
      required this.minWidth,
      this.tColor,
      this.bColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onTap,
      color: Colorr.mainAppColor,
      height: 50,
      minWidth: minWidth,
      child: Text(
        text,
        style: TextStyle(
            color: Colorr.mainwhite, fontSize: 24, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
