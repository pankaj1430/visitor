import 'package:flutter/cupertino.dart';
import 'package:visiter_app/utils/mycolors.dart';

Widget BoxHeadingCard(String heading) {
  return Row(
    children: [
      Expanded(
        child: Container(
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 10.0),
            decoration: BoxDecoration(
                color: LIGHT_GREY, borderRadius: BorderRadius.circular(5.0)),
            child: Text(
              heading,
              style: TextStyle(color: DARK_GREY, fontWeight: FontWeight.w500),
            )),
      ),
    ],
  );
}
