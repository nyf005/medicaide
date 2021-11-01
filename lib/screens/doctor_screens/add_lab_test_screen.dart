import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/custom_textfield_widget.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

import '../../constant.dart';

class AddLabTestScreen extends StatelessWidget {
  static const String id = 'add_lab_test_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kScaffoldBackgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
          elevation: 0.0,
          title: Text(
            'Test en laboratoire',
            style: kBlackTitleTextStyle,
          ),
        ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.safeBlockHorizontal * 5),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        CustomTextFieldWidget(
                          topLeft: 10.0,
                          bottomLeft: 10.0,
                          topRight: 10.0,
                          bottomRight: 10.0,
                          suffixIcon: Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: IconButton(
                              icon: Icon(
                                Icons.add_circle,
                                size: 32,
                                color: kPrimaryColor,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.vial,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('CBC')
                          ],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              FontAwesomeIcons.vial,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('Salmonella')
                          ],
                        ),
                        CustomTextFieldWidget(
                          topRight: 10.0,
                          topLeft: 10.0,
                          hintText: 'Autre numéro de téléphone',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 0.2,
                        ),
                        CustomTextFieldWidget(
                          bottomRight: 10.0,
                          bottomLeft: 10.0,
                          hintText: 'E-mail',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 2,
                        ),
                        CustomTextFieldWidget(
                          topRight: 10.0,
                          topLeft: 10.0,
                          hintText: 'Hôpital',
                          type: TextInputType.text,
                        ),
                        SizedBox(
                          height: SizeConfig.safeBlockVertical * 0.2,
                        ),
                        CustomTextFieldWidget(
                          bottomRight: 10.0,
                          bottomLeft: 10.0,
                          hintText: "Adresse de l'hôpital",
                          type: TextInputType.text,
                        ),
                      ],
                    ),
                    SubmitButton(buttonLabel: 'Continuer', onPressed: () {}),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
