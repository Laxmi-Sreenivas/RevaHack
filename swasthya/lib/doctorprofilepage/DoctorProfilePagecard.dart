import 'package:swasthya/doctorprofilepage/Doctorprofilepagecarddata.dart';
import 'package:swasthya/profilepage/profilepagecarddata.dart';
import 'package:flutter/material.dart';

class DoctorProfilePageCard extends StatelessWidget {
  const DoctorProfilePageCard({Key? key}) : super(key: key);

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
        children: const <Widget>[
          DoctorProfilePageCardData(DoctorProfilepagecardDetails: <String>["Doctor","#","kaveri","kaveri.com"]),
          
        ],
      ),
    );
  }
}
