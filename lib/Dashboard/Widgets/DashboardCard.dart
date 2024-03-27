import 'package:flutter/material.dart';
import 'package:visiter_app/utils/mycolors.dart';
import 'package:visiter_app/utils/utils.dart';

Widget DashboardCard(String count, String heading) {
  return Container(
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
        color: GREEN_COLOR, borderRadius: BorderRadius.circular(10)),
    child: Center(
      child: Column(
        children: [
          DH("12"),
          Text(
            count,
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: WHITE_COLOR),
          ),
          DH("10"),
          Text(
            heading,
            style: TextStyle(fontSize: 16, color: WHITE_COLOR),
          ),
          DH("12"),
        ],
      ),
    ),
  );
}
