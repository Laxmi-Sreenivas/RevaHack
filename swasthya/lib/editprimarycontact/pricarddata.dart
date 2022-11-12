import 'package:swasthya/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';

class PriCardData extends StatelessWidget {
  final List<String> cardDetails;

  const PriCardData({Key? key,required this.cardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        
        CircleAvatar(radius: 41,backgroundColor: Color.fromARGB(255, 16, 123, 254),
              child: CircleAvatar(backgroundImage: AssetImage("lib/assets/User Profile.png"),radius: 40,),
            ),
        SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SpecialText(
                plainText: "",
                boldText: cardDetails[0],
                fontsize: 22,
                bottomPadding: 10),
            SpecialText(
                plainText: "Health ID: ",
                boldText: cardDetails[1],
                fontsize: 12.5,
                bottomPadding: 7),
            SpecialText(
                plainText: "DOB: ",
                boldText: cardDetails[2],
                fontsize: 12.5,
                bottomPadding: 9),
            SpecialText(
                plainText: "Blood Group: ",
                boldText: cardDetails[3],
                fontsize: 12.5,
                bottomPadding: 9),
            SpecialText(
                plainText: "Gender : ",
                boldText: cardDetails[4],
                fontsize: 12.5,
                bottomPadding: 9),
            SpecialText(
                plainText: "Aadhaar Number: ",
                boldText: cardDetails[5],
                fontsize: 12.5,
                bottomPadding: 9),
            SpecialText(
                plainText: "Mobile Number: ",
                boldText: cardDetails[6],
                fontsize: 12.5,
                bottomPadding: 9),
          ],
        ),
        
        
            
            
      ],
    );
  }
}
