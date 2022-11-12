import 'package:swasthya/registrationpage/carddata.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/services/services.dart';

class HealthCard extends StatefulWidget {
  HealthCard({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HealthCardState();
  }
}

class HealthCardState extends State<HealthCard> {
  AuthService _auth = AuthService();
  bool isLoading = true;
  List<String> details = [];

  void getDetails() async {
    details.addAll(await _auth.getHealthcard());
    isLoading = false;
    if (mounted) setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 194, 222, 255),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      padding: EdgeInsets.fromLTRB(25, 6, 25, 20),
      child: isLoading
          ? null
          : Column(
              children: <Widget>[
                Text(
                  "Health Card",
                  style: TextStyle(fontSize: 20),
                ),
                Divider(height: 20, thickness: 2, color: Colors.black),
                CardData(cardDetails: details),
              ],
            ),
    );
  }
}
