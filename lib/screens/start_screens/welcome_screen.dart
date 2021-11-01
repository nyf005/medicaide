import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/start_screens/login_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/logo_text_widget.dart';

class WelcomeScreen extends StatelessWidget {
  static const String id = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 5,
                  vertical: SizeConfig.safeBlockVertical * 10),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kPrimaryColor,
                    kSecondaryColor,
                  ],
                  begin: FractionalOffset(0.0, 0.5),
                  end: FractionalOffset(0.5, 0.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.all(
                      SizeConfig.safeBlockVertical * 2,
                    ),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Image.asset(
                      'assets/images/medicaide_logo_sans_texte.png',
                      width: SizeConfig.safeBlockVertical * 20,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Bienvenue sur',
                    style: kTitleTextStyle.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  LogoText(size: SizeConfig.safeBlockHorizontal * 10),
                  Text(
                    'Le carnet de santé numérique pour tous',
                    style: kSubtitleTextStyle.copyWith(
                        color: Colors.white, fontSize: 16.0),
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  MaterialButton(
                    elevation: 20.0,
                    onPressed: () {
                      Navigator.pushNamed(context, LoginScreen.id);
                    },
                    color: Colors.white,
                    textColor: kPrimaryColor,
                    child: Icon(
                      Icons.arrow_forward,
                      size: 24,
                    ),
                    padding: EdgeInsets.all(16),
                    shape: CircleBorder(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
