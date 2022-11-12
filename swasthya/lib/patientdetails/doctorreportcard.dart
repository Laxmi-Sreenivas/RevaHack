import 'package:swasthya/doctorprofilepage/Doctorprofilepagecarddata.dart';
import 'package:swasthya/patientdetails/doctorreportcarddata.dart';
import 'package:swasthya/reportspage/reportcarddata.dart';
import 'package:flutter/material.dart';

class DoctorReportCard extends StatelessWidget {
  const DoctorReportCard({Key? key}) : super(key: key);

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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          
          DoctorReportCardData(DoctorreportcardDetails: <String>["Viral Fever","Murali","27/03/2002"])
        ],
      ),
    );
  }
}
