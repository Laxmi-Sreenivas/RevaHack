import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';
import 'package:swasthya/reportspage/reportcard.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/services/services.dart';

class Report extends StatefulWidget {
  const Report({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ReportState();
  }
}

class ReportState extends State<Report> {
  AuthService _auth = AuthService();
  List<ReportCard> reportList = [];
  bool isLoading = true;

  void getReports() async {
    List<List<String>> reportRaw = await _auth.getHealthrec();
    reportRaw.forEach((element) {
      reportList.add(ReportCard(
        reportData: element,
      ));
    });
    isLoading = false;
    if (mounted) setState(() {});
  }

  void initState(){
    super.initState();
    getReports();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 25, top: 15, bottom: 10),
              child: Text("Your Reports",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            ),
            ...reportList,
          ],
        ),
      ),
      bottomNavigationBar: NavBar(
        pageIndex: 1,
      ),
    );
  }
}
