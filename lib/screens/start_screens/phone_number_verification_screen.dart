import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/start_screens/role_selection_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/verification_widget.dart';

class PhoneNumberVerificationScreen extends StatelessWidget {
  static const String id = 'phone_number_verification_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          right: SizeConfig.safeBlockHorizontal * 7,
          left: SizeConfig.safeBlockHorizontal * 7,
          top: SizeConfig.safeBlockVertical * 10,
          bottom: SizeConfig.safeBlockVertical * 0.7,
        ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Code de vérification',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              Text(
                'Nous avons envoyé un par SMS au numéro +22509542783',
                style: kSubtitleTextStyle.copyWith(color: Colors.black45),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
              Expanded(
                child: VerificationWidget(
                  nextScreen: RoleSelectionScreen.id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
