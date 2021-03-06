import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/custom_textfield_widget.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

import 'photo_upload_screen.dart';

class DoctorRegistrationScreen extends StatelessWidget {
  static const String id = 'doctor_registration_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kScaffoldBackgroundColor,
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 5),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Text(
                      'Vos informations',
                      style: kTitleTextStyle,
                      textAlign: TextAlign.center,
                    ),
                    Column(
                      children: <Widget>[
                        CustomTextFieldWidget(
                          topRight: 10.0,
                          topLeft: 10.0,
                          hintText: 'Nom et prenoms',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 0.2,
                        ),
                        CustomTextFieldWidget(
                          bottomRight: 10.0,
                          bottomLeft: 10.0,
                          hintText: 'Sp??cialit??',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        CustomTextFieldWidget(
                          topRight: 10.0,
                          topLeft: 10.0,
                          hintText: 'Autre num??ro de t??l??phone',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 0.2,
                        ),
                        CustomTextFieldWidget(
                          bottomRight: 10.0,
                          bottomLeft: 10.0,
                          hintText: 'E-mail',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        CustomTextFieldWidget(
                          topRight: 10.0,
                          topLeft: 10.0,
                          hintText: 'H??pital',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 0.2,
                        ),
                        CustomTextFieldWidget(
                          bottomRight: 10.0,
                          bottomLeft: 10.0,
                          hintText: "Adresse de l'h??pital",
                          type: TextInputType.text,
                        ),
                      ],
                    ),
                    SubmitButton(
                      buttonLabel: 'Continuer',
                      onPressed: () =>
                          Navigator.pushNamed(context, PhotoUploadScreen.id),
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
