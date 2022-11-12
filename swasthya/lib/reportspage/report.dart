import 'package:design/TopBar/topbar.dart';
import 'package:design/navigationpage/navigationbar.dart';
import 'package:design/reportspage/reportcard.dart';


import 'package:flutter/material.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ReportState();
  }
}

class ReportState extends State<Report> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBar(),
      body: SingleChildScrollView(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 25,top: 15,bottom: 10),
            child: Text("Your Reports",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),),
          
          ReportCard(),
          ReportCard(),
          ReportCard(),
          ReportCard(),
          ReportCard(),
        ],
      ),),
      bottomNavigationBar: NavBar(
        pageIndex: 0,
      ),
    );
  }
}
