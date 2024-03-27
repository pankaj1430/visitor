import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visiter_app/utils/mycolors.dart';

String imageNotFound = 'assets/images/image-not-found.jpg';
Widget DW(String width) {
  return SizedBox(
    width: double.parse(width),
  );
}

Widget DH(String height) {
  return SizedBox(
    height: double.parse(height),
  );
}

InputDecoration inputDecoration = InputDecoration(
    labelStyle: TextStyle(color: WHITE_COLOR),
    focusedBorder: OutlineInputBorder(
        borderSide:
            BorderSide(width: 1, color: WHITE_COLOR, style: BorderStyle.solid)),
    enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
            width: 1, color: WHITE_COLOR, style: BorderStyle.solid)));

BoxDecoration dropdownDecoration = BoxDecoration(
    border: Border.all(width: 1, color: DARK_GREY),
    borderRadius: BorderRadius.circular(5));

Widget FormLabel(String heading) {
  return Text(
    heading,
    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
  );
}

TextStyle vehicleSmallHeadingStyle = TextStyle(color: DARK_GREY, fontSize: 13);

nextScreen(context, page) {
  return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ));
}

nextScreenReplacement(context, page) {
  return Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ));
}

showMessage(context, message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
}
