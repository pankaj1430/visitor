import 'package:flutter/cupertino.dart';
import 'package:visiter_app/utils/mycolors.dart';

Widget RoundedButton(String heading) {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
        color: ORANGE_COLOR, borderRadius: BorderRadius.circular(30.0)),
    child: Text(
      heading,
      textAlign: TextAlign.center,
      style: TextStyle(
          color: WHITE_COLOR, fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}
