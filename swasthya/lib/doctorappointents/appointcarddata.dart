import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class AppointCardData extends StatelessWidget {
  final List<String> AppointcardDetails;
  const AppointCardData({Key? key, required this.AppointcardDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
            Text("Appointment No",style: TextStyle(fontSize: 10),),
            Text(AppointcardDetails[0],style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),)
          ],),
        ),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            
              Container(
                padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
                child: SpecialText(
                    plainText: "Patient Name:",
                    boldText: AppointcardDetails[1],
                    fontsize: 15,
                    bottomPadding: 5,
                    topPadding: 8,),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(30, 0, 0, 10),
                child: SpecialText(
                    plainText: "Health ID:",
                    boldText: AppointcardDetails[2],
                    fontsize: 15,
                    bottomPadding: 5),
              ),
            ],
        ),
      ],
    );
  }
}
