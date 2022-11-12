import 'package:flutter/material.dart';

class DisplayIcon extends StatelessWidget {
  final IconData iconData;

  const DisplayIcon({Key? key, required this.iconData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top : 10),
      child: Icon(
        iconData,
        size: 27,
      ),
    );
  }
}
