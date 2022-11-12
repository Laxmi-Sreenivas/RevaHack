import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class ProfilePageCardData extends StatelessWidget {
  final List<String> ProfilepagecardDetails;

  const ProfilePageCardData({Key? key,required this.ProfilepagecardDetails}) : super(key: key);

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
                boldText: ProfilepagecardDetails[0],
                fontsize: 20,
                bottomPadding: 10),),

          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Health ID:",
                boldText: ProfilepagecardDetails[1],
                fontsize: 12,
                bottomPadding: 10),),
            
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SpecialText(
                plainText: "DOB:",
                boldText: ProfilepagecardDetails[2],
                fontsize: 12,
                bottomPadding: 10),),

            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "Blood Group:",
                boldText: ProfilepagecardDetails[3],
                fontsize: 12,
                bottomPadding: 10),),
            
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "Gender:",
                boldText: ProfilepagecardDetails[4],
                fontsize: 12,
                bottomPadding: 10),),
            
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "Aadhar Number:",
                boldText: ProfilepagecardDetails[5],
                fontsize: 12,
                bottomPadding: 10),),

            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: SpecialText(
                plainText: "Mobile Number:",
                boldText: ProfilepagecardDetails[6],
                fontsize: 12,
                bottomPadding: 10),),

            
        ],),
          
              
          ],
        
    );
  }
}
