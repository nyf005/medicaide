import 'package:flutter/material.dart';

import '../constant.dart';

class RoleCard extends StatelessWidget {
  final Image roleIcon;
  final String roleText;
  final String route;

  RoleCard({this.roleIcon, this.roleText, this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Card(
        elevation: 10.0,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                  backgroundColor: kScaffoldBackgroundColor,
                  radius: 40.0,
                  child: roleIcon),
              SizedBox(
                width: 20.0,
              ),
              Text(
                roleText,
                style: kTitleTextStyle.copyWith(fontSize: 20.0, fontWeight: FontWeight.w400, color: kPrimaryColor),
              ),
              Spacer(),
              Icon(Icons.chevron_right, color: kPrimaryColor,),
            ],
          ),
        ),
      ),
    );
  }
}
