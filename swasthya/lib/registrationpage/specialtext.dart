import 'package:flutter/material.dart';

class SpecialText extends StatelessWidget {
  final String plainText;
  final String boldText;
  final double fontsize;
  final double bottomPadding;
  final double leftPadding;
  final double topPadding;
  final double rightPadding;
  final double boldIncrease;

  const SpecialText(
      {Key? key,
      this.plainText = "",
      required this.boldText,
      required this.fontsize,
      this.bottomPadding = 0,
      this.leftPadding = 0,
      this.topPadding = 0,
      this.rightPadding = 0,
      this.boldIncrease = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(leftPadding,topPadding,rightPadding,bottomPadding),
      child: Text.rich(
        TextSpan(
          text: '',
          children: <TextSpan>[
            TextSpan(text: plainText, style: TextStyle(fontSize: fontsize)),
            TextSpan(
                text: boldText,
                style:
                    TextStyle(fontWeight: FontWeight.bold, fontSize: fontsize+boldIncrease)),
          ],
        ),
      ),
    );
  }
}
