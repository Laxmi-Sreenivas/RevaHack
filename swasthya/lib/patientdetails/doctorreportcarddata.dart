import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/navigationpage/navicons.dart';

class DoctorReportCardData extends StatelessWidget {
  final List<String> DoctorreportcardDetails;

  const DoctorReportCardData({Key? key,required this.DoctorreportcardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Medical Diagnosis:",
                boldText: DoctorreportcardDetails[0],
                fontsize: 12,
                bottomPadding: 10),),
            
          Container(
            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: SpecialText(
                plainText: "Doctor Name:",
                boldText: DoctorreportcardDetails[1],
                fontsize: 12,
                bottomPadding: 10),),
          
          Container(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: SpecialText(
                plainText: "Medical Diagnosis:",
                boldText: DoctorreportcardDetails[2],
                fontsize: 12,
                bottomPadding: 10),),

            
          ],
        
    );
  }
}
