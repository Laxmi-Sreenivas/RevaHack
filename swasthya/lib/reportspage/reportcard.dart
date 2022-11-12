import 'package:swasthya/reportspage/reportcarddata.dart';
import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final reportData;

  ReportCard({Key? key,required this.reportData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 194, 222, 255),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.zero,
      child: Column(
        children: <Widget>[
          ReportCardData(reportcardDetails : reportData),
        ],
      ),
    );
  }
}
