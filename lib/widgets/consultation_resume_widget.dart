import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

import '../constant.dart';

class ConsultationResumeWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Column(
            children: <Widget>[
              Text('25'),
              Text('Déc'),
            ],
          ),
        ),
        Expanded(
          flex: 6,
          child: Column(
            children: <Widget>[
              Card(
                child: ExpansionTile(
                  leading: CircleAvatar(
                    backgroundColor: kPrimaryColor,
                    child: Icon(
                      FontAwesomeIcons.pills,
                    ),
                  ),
                  title: Text('Consultation'),
                  subtitle: Text('Chest Specialist'),
                  children: <Widget>[
                    Container(
                      color: kPrimaryColor.withOpacity(0.1),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text("Diagnostic"),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      color: kPrimaryColor.withOpacity(0.1),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text("Prescriptions"),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text("Lorem ipsum dolor sit amet."),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    SubmitButton(
                      vPadding: SizeConfig.blockSizeVertical * 1,
                      buttonLabel: 'Voir la consultation',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
