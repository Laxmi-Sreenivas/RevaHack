import 'package:swasthya/appointments/appointmentscarddata.dart';
import 'package:flutter/material.dart';

class AppointmentsCard extends StatelessWidget {
  const AppointmentsCard({Key? key}) : super(key: key);

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
          AppointPageCardData(AppointpagecardDetails : <String>["Kaveri","Murali","27/03/2002","B+ve","Male","*******"]),
        ],
      ),
    );
  }
}
