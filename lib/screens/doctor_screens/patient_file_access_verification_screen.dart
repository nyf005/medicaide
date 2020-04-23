import 'package:flutter/material.dart';
import 'package:medicaide/screens/doctor_screens/patient_medical_file.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/verification_widget.dart';

import '../../constant.dart';

class PatientFileAccessVerificationScreen extends StatelessWidget {
  static String id = 'patient_file_access_verification_screen';
  @override
  Widget build(BuildContext context) {
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
                "Code d'accès",
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 1,
              ),
              Text(
                "Le patient doit vous fournir le code d'accès reçu sur son mobile pour vous autoriser à accéder à son dossier médical",
                style: kSubtitleTextStyle.copyWith(color: Colors.black45),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.safeBlockVertical * 5,
              ),
              Expanded(
                child: VerificationWidget(
                  nextScreen: PatientMedicalFile.id,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
