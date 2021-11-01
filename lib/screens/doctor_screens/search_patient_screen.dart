import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/doctor_screens/search_patient_result_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/custom_textfield_widget.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

class SearchPatientScreen extends StatelessWidget {
  static String id = 'search_patient_widget';

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
            vertical: SizeConfig.safeBlockVertical * 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Recherchez un patient',
              style: kTitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 1,
            ),
            Text(
              'Veuillez entrer le numéro de téléphone du patient',
              style: kSubtitleTextStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 5,
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
              buttonLabel: "Rechercher",
              onPressed: () {
                Navigator.pushNamed(context, SearchPatientResultScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
