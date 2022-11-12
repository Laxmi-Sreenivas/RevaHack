import 'package:swasthya/registrationpage/carddata.dart';
import 'package:flutter/material.dart';

class HealthCard extends StatelessWidget {
  const HealthCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 194, 222, 255),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.fromLTRB(25, 6, 25, 20),
      child: Column(
        children: const <Widget>[
          Text(
            "Health Card",
            style: TextStyle(fontSize: 20),
          ),
          Divider(height: 20, thickness: 2, color: Colors.black),
          CardData(cardDetails : <String>["Murali Jayam","#","27/03/2002","B +ve","Male","**** **** 4433","+91 ******8576"]),
        ],
      ),
    );
  }
}
