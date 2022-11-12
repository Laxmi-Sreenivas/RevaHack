import 'package:design/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';

class DoctorData extends StatelessWidget {
  final List<String> doctorInfo;
  const DoctorData({Key? key,required this.doctorInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15,8,25,0),
      padding: EdgeInsets.all(6),
      color: Color.fromARGB(255, 194, 222, 255),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset("lib/assets/Doc1.jpg", width: 150),
          SpecialText(
            boldText: doctorInfo[0],
            fontsize: 15,
            topPadding: 5,
            bottomPadding: 5,
          ),
          SpecialText(
            plainText: "Institute: ",
            boldText: doctorInfo[1],
            fontsize: 10,
            bottomPadding: 5,
          ),
          SpecialText(
            plainText: "Contact: ",
            boldText: doctorInfo[2],
            fontsize: 10,
            bottomPadding: 5,
          ),
          SpecialText(
            plainText: "Last Consulted: ",
            boldText: doctorInfo[3],
            fontsize: 10,
          ),
        ],
      ),
    );
  }
}
