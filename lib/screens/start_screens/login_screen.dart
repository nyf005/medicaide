import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/start_screens/phone_number_verification_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/custom_textfield_widget.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

class LoginScreen extends StatelessWidget {
  static const String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.safeBlockHorizontal * 5,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Identifiez vous',
              style: kTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            Text(
              'Veuillez entrer votre numéro de téléphone',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 10,
            ),
            CustomTextFieldWidget(
              type: TextInputType.phone,
              hintText: 'Numéro de téléphone',
              prefix: '+225  ',
              topLeft: 10.0,
              topRight: 10.0,
              bottomRight: 10.0,
              bottomLeft: 10.0,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 4,
            ),
            SubmitButton(
              buttonLabel: "Sidentifier",
              onPressed: () {
                Navigator.pushNamed(context, PhoneNumberVerificationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
