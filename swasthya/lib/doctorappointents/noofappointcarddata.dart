import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class NoOfAppointCardData extends StatelessWidget {
  final List<String> NoOfAppointcardDetails;
  const NoOfAppointCardData({Key? key, required this.NoOfAppointcardDetails})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
          children: <Widget>[
            SpecialText(
              plainText: "Date: ",
              boldText: NoOfAppointcardDetails[0],
              fontsize: 14,
              topPadding: 10,
              leftPadding: 10,
            ),
            SpecialText(
              plainText: "Time: ",
              boldText: NoOfAppointcardDetails[1],
              fontsize: 14,
              leftPadding: 55,
              topPadding: 10,),
          ],
        ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text("Total",
                  style: 
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 199, 0)
                      ),
                    ),
                Text("Appointments",
                  style: 
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 199, 0)
                      ),
                    ),
                Text(NoOfAppointcardDetails[2],
                  style: 
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 199, 0)
                      ),
                    ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text("Consulted",
                  style: 
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 19, 203, 27)
                      ),
                    ),
                Text("Appointments",
                  style: 
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 19, 203, 27)
                      ),
                    ),
                Text(NoOfAppointcardDetails[3],
                  style: 
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 19, 203, 27)
                      ),
                    ),
              ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text("Remaining",
                  style: 
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 254, 137, 0)
                      ),
                    ),
                Text("Appointments",
                  style: 
                    TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 254, 137, 0)
                      ),
                    ),
                Text(NoOfAppointcardDetails[4],
                  style: 
                    TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 254, 137, 0)
                      ),
                    ),
              ]),
            ),
          ],
        )
      ],
    );
  }
}
