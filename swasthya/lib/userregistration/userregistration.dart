import 'package:swasthya/navigationpage/navigationbar.dart';
import 'package:flutter/material.dart';
import 'package:swasthya/userlogin/userlogin.dart';
import 'package:swasthya/services/services.dart';

class UserRegistration extends StatelessWidget {
  const UserRegistration({Key? key}) : super(key: key);

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Registration',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 145, 177, 242),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController bgController = TextEditingController();
  TextEditingController aadharController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController mbnoController = TextEditingController();
  TextEditingController pmbnoController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController repassController = TextEditingController();
  final AuthService _auth = AuthService();
  String? Selectedgender;
  String? selectedBloodGroup;
  String name = '';
  String dob = '';
  String aadhar = '';
  String mno = '';
  String fname = '';
  String email = '';
  String pass = '';
  String repass = '';
  String cmno = '';
  // List of items in our dropdown menu
  var genders = [
    'Male',
    'Female',
    'Non-binary',
    'Transgender',
    'Intersex',
    'Prefer not to say',
  ];

  var bloodGroups = [
    'A+ve',
    'O+ve',
    'B+ve',
    'AB+ve',
    "O-ve",
    'B-ve',
    'A-ve',
    'AB-ve',
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(0),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: const Text(
                'User Details',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Divider(
                height: 20,
                thickness: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: const Text(
                'User Full Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Full Name',
                ),
                onChanged: (value) {
                  setState(() => fname = value);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Date of Birth',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.fromLTRB(30, 0, 200, 0),
              child: TextField(
                  controller: dobController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true, //<-- SEE HERE
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: 'DD/MM/YYYY',
                  ),
                  onChanged: (value) {
                    setState(() => dob = value);
                  }),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.fromLTRB(30, 20, 80, 0),
                  child: const Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.fromLTRB(30, 20, 10, 0),
                  child: const Text(
                    'Blood group',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(30, 5, 0, 0),
                  child: SizedBox(
                    width: 150,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: DropdownButton(
                        hint: Text("Gender"),
                        value: Selectedgender,
                        items: genders
                            .map((e) =>
                                DropdownMenuItem(child: Text(e), value: e))
                            .toList(),
                        onChanged: (String? value) => setState(() {
                          Selectedgender = value ?? "";
                        }),
                      ),
                    ),

                    // child: TextField(
                    // controller: genderController,
                    // decoration: InputDecoration(
                    //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(6),
                    //           borderSide: BorderSide(
                    //           width: 0,
                    //           style: BorderStyle.none,
                    //           ),
                    //         ),
                    //   filled: true, //<-- SEE HERE
                    //   fillColor: Color.fromARGB(255, 255, 255, 255),
                    //   hintText: 'Gender',
                    //       ),
                    // ),
                  ),
                ),
                Container(
                  height: 60,
                  padding: EdgeInsets.fromLTRB(30, 5, 10, 0),
                  child: SizedBox(
                    width: 150,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6.0),
                        color: Colors.white,
                      ),
                      child: DropdownButton(
                        hint: Text("Blood Group"),
                        value: selectedBloodGroup,
                        items: bloodGroups
                            .map((e) =>
                                DropdownMenuItem(child: Text(e), value: e))
                            .toList(),
                        onChanged: (String? value) => setState(() {
                          selectedBloodGroup = value ?? "";
                        }),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: mbnoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: '+91 00000 00000',
                ),
                onChanged: (value) {
                  setState(() => mno = value);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Aadhar Number',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                  controller: aadharController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true, //<-- SEE HERE
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: '1234 5566 8899',
                  ),
                  onChanged: (value) {
                    setState(() => aadhar = value);
                  }),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: const Text(
                'Primary Contact',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Divider(
                height: 20,
                thickness: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: const Text(
                'Contact Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: fullnameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'Full Name',
                ),
                onChanged: (value) {
                  setState(() => name = value);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Mobile Number',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                  controller: pmbnoController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    filled: true, //<-- SEE HERE
                    fillColor: Color.fromARGB(255, 255, 255, 255),
                    hintText: '+91 00000 00000',
                  ),
                  onChanged: (value) {
                    setState(() => cmno = value);
                  }),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: const Text(
                'Credentials',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(30, 0, 20, 0),
              child: const Divider(
                height: 20,
                thickness: 2,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 10, 20, 0),
              child: const Text(
                'Email',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: 'abcd@gmail.com',
                ),
                 onChanged: (value) {
                  setState(() => email = value);
                },
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: passController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: '**********',
                ),
                                onChanged: (value) {
                  setState(() => pass = value);
                },
                obscureText: true,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: const Text(
                '*Contains atleast 8 characters',
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: const Text(
                'Re Enter Password',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(30, 5, 30, 0),
              child: TextField(
                controller: repassController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  hintText: '**********',
                ),
                               onChanged: (value) {
                  setState(() => repass = value);
                },
                obscureText: true,
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
              child: SizedBox(
                height: 55, //height of button
                width: 220, //width of button
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255, 17, 98, 255),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                            color: Color.fromARGB(0, 17, 98, 255), width: 1),
                      ))),
                  onPressed: () {
                     _auth.register(
                          name,
                          dob,
                          aadhar,
                          mno,
                          fname,
                          email,
                          pass,
                          cmno,
                          Selectedgender.toString(),
                          selectedBloodGroup.toString());
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => userlogin()));
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(100, 0, 0, 0),
                  child: const Text(
                    'Already Registered?',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    child: TextButton(
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 12),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => userlogin()));
                  },
                )),
              ],
            ),
          ],
        ));
  }
}
