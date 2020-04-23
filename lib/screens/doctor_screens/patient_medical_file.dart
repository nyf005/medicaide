import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/circle_image.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

class PatientMedicalFile extends StatelessWidget {
  static String id = 'patient_medical_file';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(
          'Historique Médical',
          style: kBlackTitleTextStyle,
        ),
      ),
      body: Center(child: Text('Medical file'),)
    );
  }
}
