import 'package:flutter/material.dart';
import 'package:visiter_app/utils/mycolors.dart';

Widget CustomButton(String heading) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 18.0),
    decoration: BoxDecoration(
        color: ORANGE_COLOR, borderRadius: BorderRadius.circular(5.0)),
    child: Center(
        child: Text(
      heading,
      style: TextStyle(
          color: WHITE_COLOR, fontSize: 16, fontWeight: FontWeight.w500),
    )),
  );
}
