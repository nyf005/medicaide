import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/doctor_screens/doctor_home_screen.dart';
import 'package:medicaide/screens/doctor_screens/doctor_messages_screen.dart';
import 'package:medicaide/screens/doctor_screens/doctor_profile_screen.dart';
import 'package:medicaide/screens/doctor_screens/patient_list_screen.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

class DoctorHomePage extends StatefulWidget {
  static String id = 'doctor_home_page';
  @override
  _DoctorHomePageState createState() => _DoctorHomePageState();
}

class _DoctorHomePageState extends State<DoctorHomePage> {
  int selectedIndex;

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  List<Widget> screens = [
    DoctorHomeScreen(),
    PatientListScreen(),
    DoctorMessagesScreen(),
    DoctorProfileScreen()
  ];

  List<FFNavigationBarItem> _navBarsItems() {
    return [
      FFNavigationBarItem(
        iconData: FontAwesomeIcons.stethoscope,
        label: "Accueil",
      ),
      FFNavigationBarItem(
        iconData: FontAwesomeIcons.userInjured,
        label: "Patients",
      ),
      FFNavigationBarItem(
        iconData: FontAwesomeIcons.solidComment,
        label: "Messages",
      ),
      FFNavigationBarItem(
        iconData: FontAwesomeIcons.solidUser,
        label: ("Profile"),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      bottomNavigationBar: FFNavigationBar(
          theme: FFNavigationBarTheme(
            barBackgroundColor: Colors.white,
            selectedItemBorderColor: Colors.transparent,
            selectedItemBackgroundColor: kPrimaryColor,
            selectedItemIconColor: Colors.white,
            selectedItemLabelColor: kPrimaryColor,
            showSelectedItemShadow: false,
            barHeight: 70,
          ),
          selectedIndex: selectedIndex,
          onSelectTab: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: _navBarsItems()),
      body: screens[selectedIndex],
    );
  }
}
