import 'package:swasthya/TopBar/doctortopbar.dart';
import 'package:swasthya/doctorprofilepage/DoctorProfilePagecard.dart';
import 'package:swasthya/userlogin/userlogin.dart';
import 'package:flutter/material.dart';

class Doctorprofilepage extends StatelessWidget {
  const Doctorprofilepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 222, 255),
      appBar: DoctorTopBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: DoctorProfilePageCard(),
          ),
          
          Container(
            padding: EdgeInsets.fromLTRB(30, 10, 30, 0),  
          child: Container(
            
            width: double.infinity,
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                
              ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               
                Container(
                  
                  
                  padding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                  
                  child: TextButton(
                    onPressed: null,
                    child: const Text(
                      "Edit Details",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: const Divider(
                    height: 10,
                    thickness: 2,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 30, 0),
                  
                  child: TextButton(
                    onPressed: null,
                    child: const Text(
                      "Download Reports",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: const Divider(
                      height: 10,
                      thickness: 2,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 30, 10),
                  child: TextButton(
                    onPressed: null,
                    child: const Text(
                      "Edit Primary Contacts",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(90, 60, 0, 0),
            child: SizedBox(
              height: 55, //height of button
              width: 220, //width of button
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 17, 98, 255)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ))),
                onPressed: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => userlogin()))
                },
                child: const Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
