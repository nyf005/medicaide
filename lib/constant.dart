import 'package:flutter/material.dart';


const kScaffoldBackgroundColor = Color(0xFFECEFF3);
const kPrimaryColor = Color(0xFF6d91c9);
const kSecondaryColor = Colors.teal;
// Color(0xFF5fe5bc);
const kButtonColor = kPrimaryColor;

const kTitleTextStyle = TextStyle(
    color: Colors.teal,
    fontFamily: 'Roboto',
    fontSize: 20.0,
    fontWeight: FontWeight.w500);

const kSubtitleTextStyle = TextStyle(
    color: Colors.black54,
    fontFamily: 'Roboto',
    fontWeight: FontWeight.w400,
    height: 1.3,
    fontSize: 17.0);

const kBlackTitleTextStyle = TextStyle(
    color: Colors.black,
    fontFamily: 'Roboto',
    fontSize: 20.0,
    fontWeight: FontWeight.w500);

const kButtonLabelTextStyle =
    TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w400);

const kCustomTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.all(20.0),
  hintStyle: TextStyle(color: Colors.grey),
  border: OutlineInputBorder(borderSide: BorderSide.none),
);
