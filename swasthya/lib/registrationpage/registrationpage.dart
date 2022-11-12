import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';
import 'package:swasthya/registrationpage/doctordata.dart';
import 'package:swasthya/registrationpage/healthcard.dart';
import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/services/services.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return RegistrationPageState();
  }
}

class RegistrationPageState extends State<RegistrationPage> {
  AuthService _auth = AuthService();
  List<DoctorData> doctorData = [];
  bool isLoading = true;

  void getDoctorData() async {
    Set<List<String>> doctorRaw = await _auth.get_doctors();

    doctorRaw.forEach((element) {
      doctorData.add(DoctorData(doctorInfo: element));
    });

    if (mounted) setState(() {});
  }

  void initState() {
    super.initState();
    getDoctorData();
  }

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
            children: doctorData,
          ))
        ],
      ),
      bottomNavigationBar: NavBar(
        pageIndex: 0,
      ),
    );
  }
}
