import 'package:flutter/material.dart';
import 'package:swasthya/loadingpage/loadingpage.dart';
import 'package:firebase_core/firebase_core.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Swasthya());
}

class Swasthya extends StatelessWidget {
  const Swasthya({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LoadingPage(),
    );
  }
}
