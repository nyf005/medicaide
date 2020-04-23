import 'package:flutter/material.dart';

import '../constant.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final String hintText;
  final String prefix;
  final double topLeft;
  final double topRight;
  final double bottomLeft;
  final double bottomRight;
  final Widget suffixIcon;
  final Widget prefixIcon;
  final bool obscureText;
  final TextInputType type;

  CustomTextFieldWidget(
      {this.hintText,
        this.prefix = '',
        this.type,
        this.prefixIcon,
        this.suffixIcon,
        this.obscureText = false,
        this.topLeft = 0.0,
        this.topRight = 0.0,
        this.bottomLeft = 0.0,
        this.bottomRight = 0.0});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      child: TextField(
        keyboardType: type,
        obscureText: obscureText,
        decoration: kCustomTextFieldDecoration.copyWith(
          hintText: hintText,
          prefix: Text(prefix),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
