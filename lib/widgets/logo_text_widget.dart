import 'package:flutter/material.dart';

class LogoText extends StatelessWidget {
  final double size;

  LogoText({this.size});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'medic',
          style: TextStyle(
            color: Color(0xFF5fe5bc),
            fontFamily: 'Baloo Chettan 2',
            fontSize: size,
          ),
        ),
        Text(
          'aide',
          style: TextStyle(
              color: Color(0xFF19769f),
              fontFamily: 'Baloo Chettan 2',
              fontSize: size,
              fontWeight: FontWeight.w900),
        )
      ],
    );
  }
}
