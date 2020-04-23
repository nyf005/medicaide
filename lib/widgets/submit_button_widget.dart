import 'package:flutter/material.dart';

import '../constant.dart';

class SubmitButton extends StatelessWidget {
  final String buttonLabel;
  final double vPadding;
  final Function onPressed;

  SubmitButton({this.buttonLabel, this.vPadding, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(vertical: vPadding, horizontal: 20.0),
      elevation: 10.0,
      color: kButtonColor,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
      child: Text(
        buttonLabel,
        style: kButtonLabelTextStyle,
      ),
    );
  }
}
