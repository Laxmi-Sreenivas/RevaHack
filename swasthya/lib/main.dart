import 'package:flutter/material.dart';
import 'package:swasthya/loadingpage/loadingpage.dart';

void main() {
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
