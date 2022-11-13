import 'package:swasthya/TopBar/doctortopbar.dart';
import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/addnewreport/addnewreport.dart';
import 'package:swasthya/doctorhome/doctorhome.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/registrationpage/healthcard.dart';
import 'package:swasthya/userlogin/userlogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:swasthya/services/services.dart';

class AddNewReport extends StatelessWidget {
  final dynamic uid;
  const AddNewReport({Key? key, required this.uid}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: DoctorTopBar(),
        backgroundColor: Color.fromARGB(255, 250, 251, 252),
        body: MyStatefulWidget(uid: uid,),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  final dynamic uid;
  const MyStatefulWidget({Key? key,required this.uid}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController diagnosisController = TextEditingController();
  TextEditingController MedicinesController = TextEditingController();
  TextEditingController dirController = TextEditingController();
  TextEditingController AdditiController = TextEditingController();
  TextEditingController nextController = TextEditingController();
  final AuthService _auth = AuthService();
  String d = "";
  String medi = "";
  String dir = "";
  String add = ""; // List of items in our dropdown menu
  String next = "";

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            HealthCard(),
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                "Add New Report",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: diagnosisController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Medical Diagnosis',
                ),
                onChanged: (value) {
                  setState(() => d = value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: MedicinesController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Medicenes',
                ),
                onChanged: (value) {
                  setState(() => medi = value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: dirController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Directions to usage',
                ),
                onChanged: (value) {
                  setState(() => dir = value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: AdditiController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Additional Comments',
                ),
                style: TextStyle(height: 10),
                onChanged: (value) {
                  setState(() => add = value);
                },
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: nextController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Next visit',
                ),
                onChanged: (value) {
                  setState(() => next = value);
                },
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: SizedBox(
                height: 55, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 17, 98, 255),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                            color: Color.fromARGB(0, 17, 98, 255), width: 1),
                      ))),
                  onPressed: () {
                    //_auth.addReport(widget.uid, d, medi, dir, add, next);
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => DoctorHome()));
                  },
                  child: const Text(
                    "Add New Report",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
