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
  static int selectedUser = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(
              left: SizeConfig.safeBlockHorizontal * 5,
              right: SizeConfig.safeBlockHorizontal * 5,
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
              SizedBox(height: SizeConfig.safeBlockVertical * 1),
              SubmitButton(
                  buttonLabel: 'Nouvelle consultation',
                  onPressed: () {
                    Navigator.pushNamed(context, SearchPatientScreen.id);
                  }),
              SizedBox(height: SizeConfig.safeBlockVertical * 3),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: SizeConfig.safeBlockHorizontal * 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Consultés récemment",
                style: kBlackTitleTextStyle.copyWith(
                          fontSize: SizeConfig.safeBlockHorizontal * 5),
              ),
              SizedBox(height: SizeConfig.safeBlockVertical * 1),
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
                          border: selectedUser == index
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
        SizedBox(height: SizeConfig.safeBlockVertical * 3),
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.safeBlockHorizontal * 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Didier Drogba",
                      style: kBlackTitleTextStyle.copyWith(
                          fontSize: SizeConfig.safeBlockHorizontal * 5),
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
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: SizeConfig.safeBlockHorizontal * 4),
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
