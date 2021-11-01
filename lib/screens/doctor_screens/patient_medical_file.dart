import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicaide/constant.dart';
import 'package:medicaide/screens/doctor_screens/add_lab_test_screen.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/consultation_resume_widget.dart';
import '../../widgets/reusable_card.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class PatientMedicalFile extends StatefulWidget {
  static String id = 'patient_medical_file';

  @override
  _PatientMedicalFileState createState() => _PatientMedicalFileState();
}

class _PatientMedicalFileState extends State<PatientMedicalFile>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: Text(
          'Dossier Médical',
          style: kBlackTitleTextStyle,
        ),
      ),
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22.0),
        backgroundColor: Color(0xFF5fe5bc),
        onOpen: () => print('OPENING DIAL'),
        onClose: () => print('DIAL CLOSED'),
        curve: Curves.bounceIn,
        children: [
          SpeedDialChild(
            child: Icon(FontAwesomeIcons.pills, color: Colors.white),
            backgroundColor: kPrimaryColor,
            onTap: () => print('SECOND CHILD'),
            label: 'Prescription',
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            labelBackgroundColor: kPrimaryColor,
          ),
          SpeedDialChild(
            child: Icon(
              FontAwesomeIcons.vials,
              color: Colors.white,
            ),
            backgroundColor: kSecondaryColor,
            onTap: () => Navigator.pushNamed(context, AddLabTestScreen.id),
            label: 'Examen',
            labelStyle: TextStyle(
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            labelBackgroundColor: kSecondaryColor,
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.indigo,
                backgroundImage: NetworkImage(
                    'https://www.aceshowbiz.com/images/photo/didier_drogba.jpg'),
              ),
            ),
            Text(
              "Didier Drogba",
              style: kTitleTextStyle.copyWith(color: Colors.black),
            ),
            SizedBox(height: SizeConfig.safeBlockVertical * 1),
            Text(
              "Homme, 35 ans",
              style: kSubtitleTextStyle,
            ),
            SizedBox(
              height: SizeConfig.safeBlockVertical * 7,
              width: SizeConfig.safeBlockHorizontal * 60,
              child: Divider(
                color: Colors.black,
              ),
            ),
            Container(
              child: DefaultTabController(
                length: 3,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TabBar(
                        indicatorColor: Colors.black,
                        tabs: [
                          Tab(
                              child: Text(
                                'Informations',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              icon: Icon(
                                FontAwesomeIcons.info,
                                color: kPrimaryColor,
                              )),
                          Tab(
                              child: Text(
                                'Historique',
                                style: TextStyle(
                                    color: kSecondaryColor,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              icon: Icon(
                                FontAwesomeIcons.fileMedicalAlt,
                                color: kSecondaryColor,
                              )),
                          Tab(
                              child: Text(
                                'Antécédents',
                                style: TextStyle(
                                    color: Colors.redAccent,
                                    fontSize:
                                        SizeConfig.safeBlockHorizontal * 4),
                              ),
                              icon: Icon(
                                FontAwesomeIcons.allergies,
                                color: Colors.redAccent,
                              )),
                        ],
                        controller: _tabController,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.all(SizeConfig.safeBlockHorizontal * 5),
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ReusableCard(
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '172',
                                        style: kBlackTitleTextStyle.copyWith(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    12),
                                      ),
                                      Text(
                                        'centimètres',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ReusableCard(
                                  cardChild: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Text(
                                        '79',
                                        style: kBlackTitleTextStyle.copyWith(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    12),
                                      ),
                                      Text(
                                        'kilogrammes',
                                        style: TextStyle(
                                          color: Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: ReusableCard(
                                  cardChild: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'GROUPE SANGUIN',
                                      ),
                                      Text(
                                        'B +',
                                        style: kBlackTitleTextStyle.copyWith(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    10),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ReusableCard(
                                  cardChild: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text(
                                        'IMC : Normal',
                                        style:
                                            TextStyle(color: kSecondaryColor),
                                      ),
                                      Text(
                                        '24.5',
                                        style: TextStyle(
                                            fontSize:
                                                SizeConfig.safeBlockHorizontal *
                                                    10,
                                            //TODO : If not correct, color will be red
                                            color: kSecondaryColor,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                        ConsultationResumeWidget(),
                      ],
                    ),
                    ListView(
                      children: <Widget>[
                        Card(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          color: Colors.transparent,
                          elevation: 0,
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Medicaux',
                                  style: kBlackTitleTextStyle,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse maximus, lorem non efficitur vehicula, neque.',
                              style: kSubtitleTextStyle,
                            ),
                            // subtitle: Te,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(vertical: 10.0),
                          color: Colors.transparent,
                          elevation: 0,
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Chirurgicaux',
                                  style: kBlackTitleTextStyle,
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 2,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            subtitle: Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse maximus, lorem non efficitur vehicula, neque.',
                              style: kSubtitleTextStyle,
                            ),
                            // subtitle: Te,
                          ),
                        ),
                      ],
                    ),
                  ],
                  controller: _tabController,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
