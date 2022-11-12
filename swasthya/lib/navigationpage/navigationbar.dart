import 'package:swasthya/navigationpage/dispalyicon.dart';
import 'package:swasthya/navigationpage/navicons.dart';
import 'package:flutter/material.dart';

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
          label: 'Report',
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
        })
      },
      backgroundColor: Color.fromARGB(255, 111, 177, 255),
    );
  }
}
