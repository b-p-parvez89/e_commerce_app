import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title; // Make the title property optional
  final bool showBackButton;
  late final Widget leading;
  late final List<Widget> action;
  late final bool centerTitle;
  late final Color textColor;

  CustomAppBar(
      {this.title,
      this.showBackButton = false,
      required this.action,
      required this.leading,
      this.centerTitle = true,
      required this.textColor});

  @override
  Size get preferredSize =>
      Size.fromHeight(56.0); // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: leading,
      title: title != null
          ? Text(
              title!,
              style: TextStyle(
                  color: textColor, fontSize: 24, fontWeight: FontWeight.bold),
            )
          : null,
      centerTitle: centerTitle,
      actions: action,
    );
  }
}
