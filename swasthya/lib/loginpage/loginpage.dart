import 'package:swasthya/doctorlogin/doctorlogin.dart';
import 'package:swasthya/userlogin/userlogin.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 194, 222, 255),
      appBar: null,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 270,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/assets/Logo_BG.png"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(60, 90, 60, 0),
                child: Center(
                  child: Image.asset("lib/assets/Logo-Transparent.png"),
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 130, 0, 0),
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
                  "Login as User",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.zero,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.zero,
                  child: const Text(
                    "Not registered?",
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Container(
                  padding: EdgeInsets.zero,
                  child: TextButton(
                    onPressed: null,
                    child: const Text(
                      "Register Now",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 17, 98, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: const Divider(
              height: 50,
              thickness: 1,
              color: Color.fromARGB(255, 17, 98, 255),
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: SizedBox(
              height: 55, //height of button
              width: 220, //width of button
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                      Color.fromARGB(255,194,222,255),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      side: BorderSide(
                          color: Color.fromARGB(255, 17, 98, 255), width: 3),
                    ))),
                onPressed: () => {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => doctorlogin()))
                },
                child: const Text(
                  "Login as Doctor",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 17, 98, 255),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
