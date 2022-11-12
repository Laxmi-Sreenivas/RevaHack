import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class AppointPageCardData extends StatelessWidget {
  final List<String> AppointpagecardDetails;

  const AppointPageCardData({Key? key, required this.AppointpagecardDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SpecialText(
            plainText: "Institute: ",
            boldText: AppointpagecardDetails[0],
            fontsize: 12.5,
            bottomPadding: 6,
            boldIncrease: 2,
          ),
          SpecialText(
            plainText: "Doctor Name: ",
            boldText: AppointpagecardDetails[1],
            fontsize: 12.5,
            bottomPadding: 6,
            boldIncrease: 2,
          ),
          Divider(
            height: 20,
            thickness: 2.5,
            color: Colors.black,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SpecialText(
                plainText: "Appoint No: ",
                boldText: AppointpagecardDetails[2],
                fontsize: 12.5,
                bottomPadding: 6,
                boldIncrease: 2,
              ),
              Spacer(),
              SpecialText(
                plainText: "Time: ",
                boldText: AppointpagecardDetails[3],
                fontsize: 12.5,
                bottomPadding: 6,
                boldIncrease: 2,
              ),
            ],
          ),
          SpecialText(
            plainText: "Patient Name: ",
            boldText: AppointpagecardDetails[4],
            fontsize: 12.5,
            bottomPadding: 6,
            boldIncrease: 2,
          ),
          SpecialText(
            plainText: "Date: ",
            boldText: AppointpagecardDetails[5],
            fontsize: 12.5,
            bottomPadding: 6,
            boldIncrease: 2,
          ),
        ],
      ),
    );
  }
}
