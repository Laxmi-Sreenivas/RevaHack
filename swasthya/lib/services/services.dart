import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  FirebaseAuth _auth = FirebaseAuth.instance;
  var firebaseuser;
  // sign in
  Future<String> signin(String email, String password) async {
    try {
      UserCredential uc = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      firebaseuser = FirebaseAuth.instance.currentUser;
      return "True";
    } catch (e) {
      return (e.toString());
    }
  }

  //register
  Future register(
      String name,
      String dob,
      String aadhar,
      String mno,
      String fname,
      String email,
      String pass,
      String cmno,
      String selectedgender,
      String selectedBloodGroup) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: pass);
      firebaseuser = FirebaseAuth.instance.currentUser;
      String a = FirebaseAuth.instance.currentUser!.uid;
      await FirebaseFirestore.instance
          .collection('map')
          .doc(firebaseuser.uid)
          .set({'present no': 0});
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .set({
        "author_id": a,
        'Full_Name': fname,
        'Date_of_Birth': dob,
        'Gender': selectedgender,
        'Blood_Group': selectedBloodGroup,
        'Mobile_No': mno,
        'Aadhar_No': aadhar,
        'Contact_Name': name,
        'Contact_Mobile_No': cmno,
        'Email': email
      });

      return (true);
    } catch (e) {
      return (e.toString());
    }
  }

  Future<List<String>> getHealthcard() async {
    firebaseuser = FirebaseAuth.instance.currentUser;
    final uref = FirebaseFirestore.instance.collection('users');

    DocumentSnapshot<Map<String, dynamic>> d =
        await uref.doc(firebaseuser.uid).get();

    List<String> lst = [""];
    lst[0] = d["Full_Name"];
    lst.add("#");
    lst.add(d["Date_of_Birth"]);
    lst.add(d["Blood_Group"]);
    lst.add(d["Gender"]);
    lst.add(d["Aadhar_No"]);
    lst.add(d["Mobile_No"]);
    return lst;
  }

  Future<Set<List<String>>> get_doctors() async {
    firebaseuser = FirebaseAuth.instance.currentUser;
    final uref = FirebaseFirestore.instance.collection('healthrec');
    Set<List<String>> res = new Set<List<String>>();
    final temp = FirebaseFirestore.instance.collection('map');
    DocumentSnapshot<Map<String, dynamic>> t =
        await temp.doc(firebaseuser.uid).get();

    DocumentSnapshot<Map<String, dynamic>> d =
        await uref.doc(firebaseuser.uid).get();

    final doc = FirebaseFirestore.instance.collection('healthrec');

    int presentNo = await t['presentno'];
    if (presentNo == 0)
      return res;
    else {
      for (int i = presentNo; i > 0; i--) {
        List<String> lst = [];
        DocumentSnapshot<Map<String, dynamic>> k = await FirebaseFirestore
            .instance
            .collection('healthrec')
            .doc(firebaseuser.uid)
            .collection(i.toString())
            .doc('ABCD')
            .get();
        String s = k["Docid"];

        DocumentSnapshot<Map<String, dynamic>> l =
            await FirebaseFirestore.instance.collection('doctors').doc(s).get();
        lst.add(l['Name']);
        lst.add(l['Hospital']);
        lst.add(l['email']);
        lst.add(k['date']);
        res.add(lst);
      }
      print(res);
      return res;
    }
  }

  Future<List<List<String>>> getHealthrec() async {
    firebaseuser = FirebaseAuth.instance.currentUser;
    final uref = FirebaseFirestore.instance.collection('healthrec');
    List<List<String>> res = [];
    final temp = FirebaseFirestore.instance.collection('map');
    DocumentSnapshot<Map<String, dynamic>> t =
        await temp.doc(firebaseuser.uid).get();

    DocumentSnapshot<Map<String, dynamic>> d =
        await uref.doc(firebaseuser.uid).get();

    int presentNo = await t['presentno'];
    if (presentNo == 0)
      return res;
    else {
      for (int i = 1; i < presentNo + 1; i++) {
        List<String> lst = [];
        DocumentSnapshot<Map<String, dynamic>> k = await FirebaseFirestore
            .instance
            .collection('healthrec')
            .doc(firebaseuser.uid)
            .collection(i.toString())
            .doc('ABCD')
            .get();

        lst.add(k['Name']);
        lst.add(k['Diagnosis']);
        lst.add(k['date']);
        res.add(lst);
      }
    }
    return res;
    //}
  }

  Future<List<String>> getAppointment() async {
    firebaseuser = FirebaseAuth.instance.currentUser;
    final uref = FirebaseFirestore.instance.collection('appointments');
    DocumentSnapshot<Map<String, dynamic>> d =
        await uref.doc(firebaseuser.uid).get();
    final temp = FirebaseFirestore.instance.collection('appoint_map');
    DocumentSnapshot<Map<String, dynamic>> t =
        await temp.doc(firebaseuser.uid).get();
    int presentNo = await t['appoint_num'];
    List<String> lst = [];

    return lst;
  }

  Future<String> EditPrimarydetails(String name, String cmno) async {
    firebaseuser = FirebaseAuth.instance.currentUser;
    try {
      final uref = FirebaseFirestore.instance.collection('users');
      DocumentSnapshot<Map<String, dynamic>> d =
          await uref.doc(firebaseuser.uid).get();
      var a = {'Contact_Name': name};
      var b = {'Contact_Mobile_No': cmno};
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .update(a);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .update(b);
      return ("True");
    } catch (e) {
      return "False";
    }
  }

  Future<String> Editdetails(String fname, String mno, String selectedgender,
      String selectedBloodGroup) async {
    firebaseuser = FirebaseAuth.instance.currentUser;
    try {
      final uref = FirebaseFirestore.instance.collection('users');
      DocumentSnapshot<Map<String, dynamic>> d =
          await uref.doc(firebaseuser.uid).get();

      var a = {'Full_Name': fname};
      var b = {'Gender': selectedgender};
      var c = {'Blood_Group': selectedBloodGroup};
      var def = {'Mobile_No': mno};
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .update(a);
      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .update(b);

      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .update(c);

      await FirebaseFirestore.instance
          .collection('users')
          .doc(firebaseuser.uid)
          .update(def);

      return ("True");
    } catch (e) {
      return "False";
    }
  }
}
