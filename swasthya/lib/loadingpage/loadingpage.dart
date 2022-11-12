import 'package:swasthya/loginpage/loginpage.dart';
import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 3600), () {
      Navigator.of(context)
          .push(NewFadeRoute(builder: (context) => Loginpage()));
    });

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 111, 177, 255),
      appBar: null,
      body: Column(
        children: <Widget>[
          Spacer(flex: 2),
          Container(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Image.asset(
              "lib/assets/Logo-Transparent.png",
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
            child: Image.asset(
              "lib/assets/ECGgif.gif",
              width: 500,
              height: 200,
            ),
          ),
          Spacer(flex: 1)
        ],
      ),
    );
  }
}

class NewFadeRoute extends MaterialPageRoute{
  NewFadeRoute({builder}) : super(builder: builder);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 1000);
}
