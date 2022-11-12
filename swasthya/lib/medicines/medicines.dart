
import 'package:flutter/material.dart';
import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';


class Medicinepage extends StatelessWidget {
  const Medicinepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 222, 255),
      appBar: TopBar(),
      body: Center(
        child:Text(
        "Future Attachment",
        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),
         ),
      ),
      bottomNavigationBar: NavBar(pageIndex: 3),
    );
    
  }
}
