import 'package:design/registrationpage/registrationpage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Swasthya());
}

class Swasthya extends StatelessWidget {
  const Swasthya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: RegistrationPage(),
    );
  }
}
