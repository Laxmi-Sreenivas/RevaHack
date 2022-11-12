import 'package:swasthya/navigationpage/navicons.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';

class reports extends StatelessWidget {
  const reports({Key? key}) : super(key: key);
  static const String _title = 'Sample App';
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              width: 200,
              height: 65,
              child: Text(
                "Your Reports",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
            // height: 200,
            // width: 350,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 194, 222, 255),
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    // width: 200,
                    // height: 40,
                    child: Text(
                      "Medical Diagnosis: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 0),
                    child: Text(
                      "Doctor Name: ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )),
                Container(
                    padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: Text(
                              "date of Appointment: ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            )),
                        Container(
                          padding: EdgeInsets.fromLTRB(60, 0, 5, 0),
                          child: SizedBox(
                            height: 20,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                  Color.fromARGB(255, 17, 98, 255),
                                ),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                  side: BorderSide(
                                      color: Color.fromARGB(0, 255, 255, 255),
                                      width: 1),
                                )),
                              ),
                              child: Text(
                                'Open',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              onPressed: null,
                            ),
                          ),
                        ),
                      ],
                    )),
                Container(
                    margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 111, 177, 255),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(right: 25, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: SizedBox(
                                  
                                  height: 20,
                                  child: IconButton(
                                    onPressed: null,
                                    icon: Icon(NavIcons.download,color: Colors.black,size: 30,),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),),
                                Text(
                                  "Download",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )),
                        Container(
                            padding: EdgeInsets.only(right: 25, bottom: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: IconButton(
                                    onPressed: null,
                                    icon: Icon(NavIcons.share,color: Colors.black,size: 30,),
                                    padding: EdgeInsets.zero,
                                  ),
                                ),
                                Text(
                                  "Share",
                                  style: TextStyle(fontSize: 10),
                                ),
                              ],
                            )),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: NavBar(
        pageIndex: 1,
      ),
    );
  }
}
