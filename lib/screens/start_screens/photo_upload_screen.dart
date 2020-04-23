import 'package:flutter/material.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/doctor_screens/doctor_home_page.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';


class PhotoUploadScreen extends StatelessWidget {
  static const String id = 'photo_upload_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.safeBlockHorizontal * 7,
            vertical: SizeConfig.safeBlockVertical * 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  'Photo de profil',
                  style: kTitleTextStyle,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.safeBlockVertical * 1,
                ),
                Text(
                  'Ajoutez une photo, vous pourrez la modifier après',
                  style: kSubtitleTextStyle.copyWith(color: Colors.black45),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            MaterialButton(
              padding: EdgeInsets.all(
                SizeConfig.safeBlockVertical * 8,
              ),
              elevation: 20.0,
              onPressed: () {},
              color: Colors.white,
              textColor: kPrimaryColor,
              child: Icon(
                Icons.camera_alt,
                color: kPrimaryColor,
                size: SizeConfig.safeBlockVertical * 10,
              ),
              shape: CircleBorder(),
            ),
            SubmitButton(
              vPadding: SizeConfig.blockSizeVertical * 2,
              buttonLabel: 'Continuer',
              onPressed: () {
                Navigator.pushNamed(context, DoctorHomePage.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
