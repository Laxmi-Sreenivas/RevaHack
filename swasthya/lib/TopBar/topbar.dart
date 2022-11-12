import 'package:swasthya/navigationpage/navicons.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/profilepage/profilepage.dart';
import 'package:swasthya/registrationpage/registrationpage.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: Color.fromARGB(255, 111, 177, 255),
        toolbarHeight: 90,
        title: Row(
          children: <Widget>[
            Spacer(flex: 2),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => RegistrationPage())),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 111, 177, 255)), 
                elevation: MaterialStateProperty.resolveWith((states) => 0), 
              ),
              child: Container(
                padding: EdgeInsets.only(top: 12),
                height: 66,
                child: Image.asset("lib/assets/Logo-Transparent.png"),
              ),
            ),
            Spacer(flex: 1),
            SizedBox(
              height: 66,
              child: IconButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => profilepage())),
                  icon: Icon(
                    NavIcons.profile,
                    size: 40,
                    color: Colors.white,
                  )),
            ),
          ],
        ));
  }

  @override
  Size get preferredSize => Size.fromHeight(90);
}
