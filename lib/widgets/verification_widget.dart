import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medicaide/utils/size_config.dart';
import 'package:medicaide/widgets/submit_button_widget.dart';

import '../constant.dart';

class VerificationWidget extends StatefulWidget {
  final String nextScreen;
  VerificationWidget({@required this.nextScreen});

  @override
  _VerificationWidgetState createState() => _VerificationWidgetState();
}

class _VerificationWidgetState extends State<VerificationWidget> {
  TextEditingController controller1 = new TextEditingController();
  TextEditingController controller2 = new TextEditingController();
  TextEditingController controller3 = new TextEditingController();
  TextEditingController controller4 = new TextEditingController();

  TextEditingController currController = new TextEditingController();

  @override
  void dispose() {
    super.dispose();
    controller1.dispose();
    controller2.dispose();
    controller3.dispose();
    controller4.dispose();
  }

  @override
  void initState() {
    super.initState();
    currController = controller1;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    List<Widget> widgetList = [
      OtpInputWidget(controller: controller1),
      OtpInputWidget(controller: controller2),
      OtpInputWidget(controller: controller3),
      OtpInputWidget(controller: controller4),
    ];

    String route = widget.nextScreen;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: widgetList,
              ),
              SizedBox(
                height: SizeConfig.safeBlockHorizontal * 1,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Nouveau code ?',
                  style: kTitleTextStyle.copyWith(color: kSecondaryColor),
                ),
              ),
              SizedBox(
                height: SizeConfig.safeBlockHorizontal * 3,
              ),
              SubmitButton(
                  buttonLabel: 'Vérifier',
                  onPressed: () => matchOtp(route)),
              SizedBox(
                height: SizeConfig.safeBlockHorizontal * 5,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("1"),
                        otpKey: Text("1", style: kBlackTitleTextStyle),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("2"),
                        otpKey: Text("2", style: kBlackTitleTextStyle),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("3"),
                        otpKey: Text("3", style: kBlackTitleTextStyle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("4"),
                        otpKey: Text("4", style: kBlackTitleTextStyle),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("5"),
                        otpKey: Text("5", style: kBlackTitleTextStyle),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("6"),
                        otpKey: Text("6", style: kBlackTitleTextStyle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("7"),
                        otpKey: Text("7", style: kBlackTitleTextStyle),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("8"),
                        otpKey: Text("8", style: kBlackTitleTextStyle),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("9"),
                        otpKey: Text("9", style: kBlackTitleTextStyle),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: SizeConfig.safeBlockVertical * 1.5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      MaterialButton(
                        elevation: 0.0,
                        onPressed: null,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                        ),
                      ),
                      OTPKeyboardKey(
                        onPressed: () => inputTextToField("0"),
                        otpKey: Text("0", style: kBlackTitleTextStyle),
                      ),
                      MaterialButton(
                        onPressed: deleteText,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.backspace,
                            color: kSecondaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  void inputTextToField(String str) {
    //Edit first textField
    if (currController == controller1) {
      controller1.text = str;
      currController = controller2;
    }

    //Edit second textField
    else if (currController == controller2) {
      controller2.text = str;
      currController = controller3;
    }

    //Edit third textField
    else if (currController == controller3) {
      controller3.text = str;
      currController = controller4;
    }

    //Edit fourth textField
    else if (currController == controller4) {
      controller4.text = str;
      currController = controller4;
    }
  }

  void deleteText() {
    if (currController.text.length == 0) {
    } else {
      currController.text = "";
      currController = controller3;
      return;
    }

    if (currController == controller1) {
      controller1.text = "";
    } else if (currController == controller2) {
      controller1.text = "";
      currController = controller1;
    } else if (currController == controller3) {
      controller2.text = "";
      currController = controller2;
    } else if (currController == controller4) {
      controller3.text = "";
      currController = controller3;
    }
  }

  void matchOtp(String route) {
    // Do the verification
    Navigator.pushNamed(context, route);
  }
}

class OTPKeyboardKey extends StatelessWidget {
  final Widget otpKey;
  final Function onPressed;

  OTPKeyboardKey({this.otpKey, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(5.0),
      ),
      elevation: 10.0,
      color: Colors.white,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: otpKey,
      ),
    );
  }
}

class OtpInputWidget extends StatelessWidget {
  final TextEditingController controller;

  OtpInputWidget({this.controller});

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(5.0),
        topRight: Radius.circular(5.0),
        bottomLeft: Radius.circular(5.0),
        bottomRight: Radius.circular(5.0),
      ),
      elevation: 1.0,
      child: Container(
        width: 48.0,
        height: 48.0,
        alignment: Alignment.center,
        child: TextField(
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
          ],
          // decoration: kCustomTextFieldDecoration,
          enabled: false,
          controller: controller,
          autofocus: false,
          textAlign: TextAlign.center,
          style: kBlackTitleTextStyle,
        ),
      ),
    );
  }
}
