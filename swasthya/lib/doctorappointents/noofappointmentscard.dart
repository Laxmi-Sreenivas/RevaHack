import 'package:swasthya/doctorappointents/appointcarddata.dart';
import 'package:swasthya/doctorappointents/noofappointcarddata.dart';
import 'package:swasthya/doctorprofilepage/Doctorprofilepagecarddata.dart';
import 'package:swasthya/patientsearch/patientcarddata.dart';
import 'package:swasthya/profilepage/profilepagecarddata.dart';
import 'package:flutter/material.dart';

class NoOfAppointCard extends StatelessWidget {
  const NoOfAppointCard({Key? key}) : super(key: key);

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
          NoOfAppointCardData(NoOfAppointcardDetails: <String>["12/11/2003,Saturday","00:52PM","30",'19',"15"]),
          
        ],
      ),
    );
  }
}
