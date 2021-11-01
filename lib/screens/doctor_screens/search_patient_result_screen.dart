import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/doctor_screens/patient_file_access_verification_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

class SearchPatientResultScreen extends StatelessWidget {
  static String id = 'search_patient_result_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(
          'Nouvelle consultation',
          style: kBlackTitleTextStyle,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal * 7,
            vertical: SizeConfig.safeBlockVertical * 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Résultat de la recherche',
              style: kTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(
                    SizeConfig.safeBlockVertical * 1,
                  ),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // color: Colors.white,
                    border: Border.all(width: 10.0, color: kPrimaryColor),
                  ),
                  child: ClipOval(
                    child: Image.network(
                      'https://www.aceshowbiz.com/images/photo/didier_drogba.jpg',
                      width: SizeConfig.safeBlockVertical * 20,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Didier Drogba',
                  style: kTitleTextStyle,
                ),
                Text(
                  '33 ans',
                  style: kSubtitleTextStyle,
                )
              ],
            ),
            SubmitButton(
              buttonLabel: "Accéder au dossier",
              onPressed: () {
                Navigator.pushNamed(
                    context, PatientFileAccessVerificationScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
