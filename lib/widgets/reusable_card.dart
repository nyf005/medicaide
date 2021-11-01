import 'package:flutter/material.dart';
import 'package:medicaide/utils/size_config.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.cardChild});

  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 1),
      color: Colors.white30,
    );
  }
}
