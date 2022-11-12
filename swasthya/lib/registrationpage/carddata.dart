import 'package:design/registrationpage/specialtext.dart';
import 'package:flutter/material.dart';

class CardData extends StatelessWidget {
  final List<String> cardDetails;

  const CardData({Key? key,required this.cardDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
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
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(backgroundImage: AssetImage("lib/assets/User Profile.png"),radius: 30,),
            SizedBox(
              height: 40,
            ),
            Image.asset(
              "lib/assets/QR Code.png",
              height: 70,
              width: 70,
            ),
          ],
        )
      ],
    );
  }
}
