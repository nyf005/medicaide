import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicaide/screens/doctor_screens/patient_file_access_verification_screen.dart';
import 'package:medicaide/screens/doctor_screens/search_patient_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/circle_image.dart';
import 'package:medicaide/widgets/consultation_resume_widget.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

import '../../constant.dart';

class DoctorHomeScreen extends StatelessWidget {
  static String id = 'doctor_home_screen';
  static int tappedGestureDetector = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.safeBlockHorizontal * 7,
              right: SizeConfig.safeBlockHorizontal * 7,
              top: SizeConfig.safeBlockVertical * 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(
                    Icons.menu,
                    color: kPrimaryColor,
                    size: 20.0,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "Hôpital Militaire d'Abidjan",
                    style: kBlackTitleTextStyle,
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              SubmitButton(
                  vPadding: SizeConfig.blockSizeVertical * 2,
                  buttonLabel: 'Nouvelle consultation',
                  onPressed: () {
                    Navigator.pushNamed(context, SearchPatientScreen.id);
                  }),
              SizedBox(height: 30.0),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 7),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Consultés récemment",
                style: kBlackTitleTextStyle,
              ),
              SizedBox(height: 10.0),
              Container(
                height: 100.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: CircleImage(
                          border: tappedGestureDetector == index
                              ? Border.all(color: kPrimaryColor, width: 5.0)
                              : Border.all(
                                  color: Colors.transparent,
                                ),
                          imageLink:
                              "https://www.aceshowbiz.com/images/photo/didier_drogba.jpg",
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30.0,
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Didier Drogba",
                      style: kBlackTitleTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        //TODO : Ask Permission to access user info
                        Navigator.pushNamed(
                            context, PatientFileAccessVerificationScreen.id);
                      },
                      child: Row(children: <Widget>[
                        Text(
                          "Voir les informations",
                          style: TextStyle(color: kPrimaryColor),
                        ),
                        SizedBox(width: 5.0),
                        Container(
                          padding: EdgeInsets.all(
                            SizeConfig.safeBlockVertical * 0.3,
                          ),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: kPrimaryColor,
                          ),
                          child: Icon(
                            FontAwesomeIcons.angleRight,
                            size: 16,
                            color: Colors.white,
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      children: <Widget>[
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
