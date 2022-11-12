import 'package:swasthya/doctorappointents/doctorappointments.dart';
import 'package:swasthya/doctorhome/doctorhome.dart';
import 'package:swasthya/navigationpage/dispalyicon.dart';
import 'package:swasthya/navigationpage/navicons.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/patientsearch/patientsearch.dart';


class DocNavBar extends StatefulWidget {
  int pageIndex;

  DocNavBar({Key? key, required this.pageIndex}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return DocNavBarState();
  }
}

class DocNavBarState extends State<DocNavBar> {
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
          label: 'Appointments',
        ),
        BottomNavigationBarItem(
          icon: DisplayIcon(iconData: NavIcons.appointment),
          label: 'Patients',
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
                  MaterialPageRoute(builder: (context) => DoctorHome()));
              break;
            case 1:
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => DocAppointments()));
              break;
            case 2:
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => PatientSearch()));
              break;
            default:
          }
        })
      },
      backgroundColor: Color.fromARGB(255, 111, 177, 255),
    );
  }
}
