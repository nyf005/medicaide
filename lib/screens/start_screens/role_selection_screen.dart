import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/start_screens/doctor_registration_screen.dart';
import 'package:medicaide/screens/start_screens/patient_registration_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/role_widget.dart';


class RoleSelectionScreen extends StatelessWidget {
  static const String id = 'role_selection_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.only(
          right: SizeConfig.safeBlockHorizontal * 7,
          left: SizeConfig.safeBlockHorizontal * 7,
          top: SizeConfig.safeBlockVertical * 15,
          bottom: SizeConfig.safeBlockVertical * 0.7,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Rôle',
              style: kTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            Text(
              'Choisissez votre rôle',
              style: kSubtitleTextStyle.copyWith(color: Colors.black45),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 10,
            ),
            RoleCard(
              roleIcon: Image.asset(
                'assets/images/icon_doctor.png',
                height: SizeConfig.safeBlockVertical * 8,
              ),
              roleText: 'Docteur',
              route: DoctorRegistrationScreen.id,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            RoleCard(
              roleIcon: Image.asset(
                'assets/images/icon_patient.png',
                height: SizeConfig.safeBlockVertical * 8,
              ),
              roleText: 'Patient',
              route: PatientRegistrationScreen.id,
            ),
          ],
        ),
      ),
    );
  }
}
