import 'package:swasthya/appointments/appointments.dart';
import 'package:swasthya/medicines/medicines.dart';
import 'package:swasthya/navigationpage/dispalyicon.dart';
import 'package:swasthya/navigationpage/navicons.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/registrationpage/registrationpage.dart';
import 'package:swasthya/reportspage/report.dart';
import 'package:swasthya/medicines/medicines.dart';

class NavBar extends StatefulWidget {
  int pageIndex;

  NavBar({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NavBarState();
  }
}

class NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: DisplayIcon(iconData: NavIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: DisplayIcon(iconData: NavIcons.report),
          label: 'Reports',
        ),
        BottomNavigationBarItem(
          icon: DisplayIcon(iconData: NavIcons.appointment),
          label: 'Appointments',
        ),
        BottomNavigationBarItem(
          icon: DisplayIcon(iconData: NavIcons.pills),
          label: 'Medicine',
        ),
      ],
      selectedItemColor: Colors.white,
      currentIndex: widget.pageIndex,
      onTap: (int index) => {
        setState(() {
          widget.pageIndex = index;
          switch (widget.pageIndex) {
            case 0:
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => RegistrationPage()));
              break;
            case 1:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Report()));
              break;
            case 2:
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => appointments()));
              break;
             case 3:
              Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => Medicinepage()));
            break;
            default:
          }
        })
      },
      backgroundColor: Color.fromARGB(255, 111, 177, 255),
    );
  }
}
