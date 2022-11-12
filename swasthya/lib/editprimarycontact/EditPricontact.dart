import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/editprimarycontact/primarycard.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/registrationpage/carddata.dart';
import 'package:swasthya/services/services.dart';

class EditpriContact extends StatelessWidget {
  EditpriContact({Key? key}) : super(key: key);
  final AuthService _auth = AuthService();
  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: TopBar(),
        backgroundColor: Color.fromARGB(255, 145, 177, 242),
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
  TextEditingController genderController = TextEditingController();
  TextEditingController bgController = TextEditingController();
  TextEditingController mbnoController = TextEditingController();
  String name = '';
  String cmno = '';
  String? Selectedgender;
  final AuthService _auth = AuthService();
  String? selectedBloodGroup;
  // List of items in our dropdown menu
  var genders = [
    'Male',
    'Female',
    'Non-binary',
    'Transgender',
    'Intersex',
    'Prefer not to say',
  ];

  var bloodGroups = [
    'A+ve',
    'O+ve',
    'B+ve',
    'AB+ve',
    "O-ve",
    'B-ve',
    'A-ve',
    'AB-ve',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: const Text(
                'Edit Primary Contact',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            PrimaryCard(),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: const Text(
                'Full Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Full Name',
                ),
                onChanged: (value) {
                  setState(() => name = value);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                  controller: mbnoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true, //<-- SEE HERE
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: '+91 00000 00000',
                  ),
                  onChanged: (value) {
                    setState(() => cmno = value);
                  }),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
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
                  onPressed: (() {
                    if(_auth.EditPrimarydetails(name, cmno) == "True")
                    {
                      print("Succesfull");
                    }
                    else
                    {
                      print("Try again");
                    }
                  }),
                  child: const Text(
                    "Update",
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
