import 'package:swasthya/TopBar/topbar.dart';
import 'package:swasthya/appointments/appointmentscard.dart';
import 'package:swasthya/navigationpage/navigationbar.dart';
import 'package:flutter/material.dart';

class appointments extends StatefulWidget {
  appointments({Key? key}) : super(key: key);
  int appointmentindex = 1;
  final active = Color.fromARGB(255, 17, 98, 255);
  final inactive = Color.fromARGB(255, 194, 222, 255);

  Color past = Color.fromARGB(255, 17, 98, 255);
  Color upcoming = Color.fromARGB(255, 194, 222, 255);
  Color cancelled = Color.fromARGB(255, 194, 222, 255);

  @override
  State<StatefulWidget> createState() {
    return appointmentsState();
  }
}

class appointmentsState extends State<appointments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(40, 40, 0, 0),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 194, 222, 255),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            padding: EdgeInsets.fromLTRB(60, 30, 60, 30),
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.add,
                      size: 50,
                    ),
                    SizedBox(
                      width: 100,
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          Text(
                            "Book an",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                          Text(
                            "Appointment",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )
                        ],
                      )),
                    ),
                  ],
                )),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
            child: Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(widget.past),
                      ),
                      onPressed: () => {
                        setState(() {
                          widget.appointmentindex = 1;
                          widget.past = widget.active;
                          widget.cancelled = widget.inactive;
                          widget.upcoming = widget.inactive;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Text(
                              "Past",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Text(
                              "Appointments",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(widget.upcoming),
                      ),
                      onPressed: () => {
                        setState(() {
                          widget.appointmentindex = 2;
                          widget.past = widget.inactive;
                          widget.cancelled = widget.inactive;
                          widget.upcoming = widget.active;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Text(
                              "Upcoming",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Text(
                              "Appointments",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  margin: EdgeInsets.zero,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(widget.cancelled),
                      ),
                      onPressed: () => {
                        setState(() {
                          widget.appointmentindex = 3;
                          widget.past = widget.inactive;
                          widget.cancelled = widget.active;
                          widget.upcoming = widget.inactive;
                        })
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Text(
                              "Cancelled",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.zero,
                            child: const Text(
                              "Appointments",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppointmentsCard(),
        ],
      ),
      bottomNavigationBar: NavBar(
        pageIndex: 2,
      ),
    );
  }
}
