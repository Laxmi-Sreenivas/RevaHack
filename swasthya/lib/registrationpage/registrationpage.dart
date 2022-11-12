import 'package:design/TopBar/topbar.dart';
import 'package:design/navigationpage/navigationbar.dart';
import 'package:design/registrationpage/doctordata.dart';
import 'package:design/registrationpage/healthcard.dart';
import 'package:design/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RegistrationPageState();
  }
}

class RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HealthCard(),
          SpecialText(
            plainText: "",
            boldText: "Your Doctors",
            fontsize: 25,
            leftPadding: 25,
          ),
          Flexible(
              child: GridView.count(
            crossAxisCount: 2,
            children: const <Widget>[
              DoctorData(
                doctorInfo: [
                  "Dr Praveen Kumar",
                  "Sunshine Hospitals",
                  "drpraveen@gmail.com",
                  "03/10/2022"
                ],
              ),
              DoctorData(
                doctorInfo: [
                  "Dr Praveen Kumar",
                  "Sunshine Hospitals",
                  "drpraveen@gmail.com",
                  "03/10/2022"
                ],
              ),
              DoctorData(
                doctorInfo: [
                  "Dr Praveen Kumar",
                  "Sunshine Hospitals",
                  "drpraveen@gmail.com",
                  "03/10/2022"
                ],
              )
            ],
          ))
        ],
      ),
      bottomNavigationBar: NavBar(
        pageIndex: 0,
      ),
    );
  }
}
