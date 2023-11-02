import 'package:e_commerce_app/utils/color.dart';
import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatelessWidget {
  final String hintText;
  final Widget? preIcon;
  final bool? isRequired;

  const TextFormFieldWidget(
      {super.key, required this.hintText, this.preIcon, this.isRequired});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          validator:isRequired==true? (value) {
            if (value!.isEmpty) {
              return "The field is required";
            }
            return null;
          }:null,
          style: TextStyle(fontSize: 20, color: Colorr.mainBlack),
          decoration: InputDecoration(
              prefixIcon: preIcon,
              hintText: hintText,
              hintStyle: TextStyle(color: Colorr.mainBlack, fontSize: 18)),
        ));
  }
}
