import 'package:swasthya/TopBar/doctortopbar.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/addnewreport/addnewreport.dart';
import 'package:swasthya/patientdetails/doctorreportcard.dart';
import 'package:swasthya/registrationpage/healthcard.dart';

class PatientDetails extends StatefulWidget {
  PatientDetails({Key? key}) : super(key: key);
  
  final clicked = Color.fromARGB(255, 17, 98, 255);
  final notclicked = Color.fromARGB(255, 194, 222, 255);

  Color now = Color.fromARGB(255, 194, 222, 255);
  

  @override
  State<StatefulWidget> createState() {
    return PatientDetailsState();
  }
}

class PatientDetailsState extends State<PatientDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 251, 252),
      appBar: DoctorTopBar(),
      body: const MyStatefulWidget(),
      floatingActionButton: InkWell(
          splashColor: Colors.blue,
          onLongPress: () => Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => AddNewReport())),
          child: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: (){},
          ),
        ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
      

  }
}

 class MyStatefulWidget extends StatefulWidget {
  
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  // List of items in our dropdown menu

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
                "Medical History",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            DoctorReportCard()
          ],
        ));
  }
}

