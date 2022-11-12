import 'package:swasthya/TopBar/doctortopbar.dart';
import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/addnewreport/addnewreport.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/otpverificationpage/otpverify.dart';
import 'package:swasthya/userlogin/userlogin.dart';

class DoctorHome extends StatelessWidget {
  const DoctorHome({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: DoctorTopBar(),
        backgroundColor: Color.fromARGB(255, 250, 251, 252),
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
  TextEditingController healthidController = TextEditingController();

  // List of items in our dropdown menu

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                "Enter Patient Details",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Enter Patient Health ID',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: healthidController,
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
                  hintText: '1234 5678',
                ),
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
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => AddNewReport())),
                  child: const Text(
                    "Add Report",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: SizedBox(
                height: 55, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 255, 255, 255),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                            color: Color.fromARGB(0, 17, 98, 255), width: 3),
                      ))),
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OtpVerify())),
                  child: const Text(
                    "Get Access",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 66, 122, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
