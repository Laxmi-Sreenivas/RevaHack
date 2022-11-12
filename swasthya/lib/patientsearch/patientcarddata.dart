import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class PatientCardData extends StatelessWidget {
  final List<String> PatientcardDetails;

  const PatientCardData({Key? key,required this.PatientcardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Patient Name:",
                boldText: PatientcardDetails[0],
                fontsize: 14,
                bottomPadding: 5),),

          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SpecialText(
                plainText: "Health ID:",
                boldText: PatientcardDetails[1],
                fontsize: 14,
                bottomPadding: 5),),
            
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
            child: SpecialText(
                plainText: "Date of Appointment:",
                boldText: PatientcardDetails[2],
                fontsize: 14,
                bottomPadding: 5),),
          ],
        
    );
  }
}
