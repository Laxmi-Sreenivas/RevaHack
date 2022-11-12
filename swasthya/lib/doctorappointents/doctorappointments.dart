import 'package:flutter/material.dart';
import 'package:swasthya/TopBar/doctortopbar.dart';
import 'package:swasthya/doctorappointents/appointcard.dart';
import 'package:swasthya/doctorappointents/noofappointmentscard.dart';
import 'package:swasthya/patientsearch/patientcard.dart';

class DocAppointments extends StatelessWidget {
  const DocAppointments({Key? key}) : super(key: key);
 
  static const String _title = 'Sample App';
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: DoctorTopBar(),
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: const MyStatefulWidget(),
      ),
    );
  }
}
 
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);
 
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
 
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20,),
            NoOfAppointCard(),
            Container(
              height: 100,
              padding: EdgeInsets.fromLTRB(30, 25, 30, 0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),
                          borderSide: BorderSide(
                          width: 2, 
                          style: BorderStyle.none,
                          ),
                        ),
                  filled: true, //<-- SEE HERE
                  fillColor:Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Search Appointment Details',
                  
                  
                  
                ),
              ),
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 15),
                child: const Text(
                  'Appointment List',
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),
                      ),
                ),
            AppointCard(),
            AppointCard(),
            
          ],
        ));
  }
}