import 'package:flutter/material.dart';
import 'package:medicaide/utils/size_config.dart';

import '../constant.dart';

class SubmitButton extends StatelessWidget {
  final String buttonLabel;
  // final double vPadding;
  final Function onPressed;

  SubmitButton({this.buttonLabel, this.onPressed});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return RaisedButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(
        vertical: SizeConfig.safeBlockVertical * 2,
        horizontal: SizeConfig.safeBlockVertical * 4,
      ),
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
