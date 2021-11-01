import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:medicaide/screens/doctor_screens/add_lab_test_screen.dart';
import 'package:medicaide/screens/doctor_screens/doctor_home_page.dart';
import 'package:medicaide/screens/doctor_screens/doctor_home_screen.dart';
import 'package:medicaide/screens/doctor_screens/doctor_messages_screen.dart';
import 'package:medicaide/screens/doctor_screens/doctor_profile_screen.dart';
import 'package:medicaide/screens/doctor_screens/patient_file_access_verification_screen.dart';
import 'package:medicaide/screens/doctor_screens/patient_list_screen.dart';
import 'package:medicaide/screens/doctor_screens/patient_medical_file.dart';
import 'package:medicaide/screens/doctor_screens/search_patient_result_screen.dart';
import 'package:medicaide/screens/doctor_screens/search_patient_screen.dart';

import 'screens/start_screens/doctor_registration_screen.dart';
import 'screens/start_screens/login_screen.dart';
import 'screens/start_screens/patient_registration_screen.dart';
import 'screens/start_screens/phone_number_verification_screen.dart';
import 'screens/start_screens/photo_upload_screen.dart';
import 'screens/start_screens/role_selection_screen.dart';
import 'screens/start_screens/welcome_screen.dart';

void main() => runApp(
      DevicePreview(
        isToolBarVisible: false,
        builder: (context) => MyApp(),
        enabled: !kReleaseMode,
      ),
    );

// void main() => runApp(
//       MyApp(),
//     );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      title: 'Medicaide',
      theme: ThemeData(
        fontFamily: 'Roboto',
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        PhoneNumberVerificationScreen.id: (context) =>
            PhoneNumberVerificationScreen(),
        RoleSelectionScreen.id: (context) => RoleSelectionScreen(),
        DoctorRegistrationScreen.id: (context) => DoctorRegistrationScreen(),
        PatientRegistrationScreen.id: (context) => PatientRegistrationScreen(),
        PhotoUploadScreen.id: (context) => PhotoUploadScreen(),
        DoctorHomePage.id: (context) => DoctorHomePage(),
        DoctorHomeScreen.id: (context) => DoctorHomeScreen(),
        DoctorProfileScreen.id: (context) => DoctorProfileScreen(),
        PatientListScreen.id: (context) => PatientListScreen(),
        DoctorMessagesScreen.id: (context) => DoctorMessagesScreen(),
        SearchPatientScreen.id: (context) => SearchPatientScreen(),
        SearchPatientResultScreen.id: (context) => SearchPatientResultScreen(),
        PatientFileAccessVerificationScreen.id: (context) =>
            PatientFileAccessVerificationScreen(),
        PatientMedicalFile.id: (context) => PatientMedicalFile(),
        AddLabTestScreen.id: (context) => AddLabTestScreen(),
      },
    );
  }
}
