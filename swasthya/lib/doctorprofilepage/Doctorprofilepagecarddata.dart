import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class DoctorProfilePageCardData extends StatelessWidget {
  final List<String> DoctorProfilepagecardDetails;

  const DoctorProfilePageCardData({Key? key,required this.DoctorProfilepagecardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CircleAvatar(radius: 41,backgroundColor: Color.fromARGB(255, 16, 123, 254),
              child: CircleAvatar(backgroundImage: AssetImage("lib/assets/User Profile.png"),radius: 40,),
            ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "",
                boldText: DoctorProfilepagecardDetails[0],
                fontsize: 20,
                bottomPadding: 10),),

          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Doctor ID:",
                boldText: DoctorProfilepagecardDetails[1],
                fontsize: 12,
                bottomPadding: 10),),
            
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SpecialText(
                plainText: "Institute:",
                boldText: DoctorProfilepagecardDetails[2],
                fontsize: 12,
                bottomPadding: 10),),

            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "Mail ID:",
                boldText: DoctorProfilepagecardDetails[3],
                fontsize: 12,
                bottomPadding: 10),),
            
            

            
        ],),
          
              
          ],
        
    );
  }
}
