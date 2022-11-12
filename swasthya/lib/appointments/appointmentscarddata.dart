import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class AppointPageCardData extends StatelessWidget {
  final List<String> AppointpagecardDetails;

  const AppointPageCardData({Key? key,required this.AppointpagecardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Institute:",
                boldText: AppointpagecardDetails[0],
                fontsize: 14,
                bottomPadding: 5),),

          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SpecialText(
                plainText: "Doctor Name:",
                boldText: AppointpagecardDetails[1],
                fontsize: 12,
                bottomPadding: 10),),
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: Divider(height: 10, thickness: 2, color: Colors.black),
          ),
          

          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Appoint NO:",
                boldText: AppointpagecardDetails[2],
                fontsize: 12,
                bottomPadding: 10),),

            Container(
              padding: EdgeInsets.fromLTRB(80, 0, 0, 0),
              child: SpecialText(
                plainText: "Time:",
                boldText: AppointpagecardDetails[3],
                fontsize: 12,
                bottomPadding: 10),),
            ],
          ),
          
            
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "patient Name:",
                boldText: AppointpagecardDetails[4],
                fontsize: 12,
                bottomPadding: 10),),
            
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "Date:",
                boldText: AppointpagecardDetails[5],
                fontsize: 12,
                bottomPadding: 10),),

            
            
        ],
          
        
    );
  }
}
