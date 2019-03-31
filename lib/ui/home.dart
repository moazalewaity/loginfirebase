import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  const Home({Key key, this.user}) : super(key: key);
  final FirebaseUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home ${user.email}'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        child: Center(
          child: Text('welcome ${user.email}'),
        ),
      ),
    );
  }

//  Center checkRole(DocumentSnapshot snapshot) {
//    if (snapshot.data == null) {
//      return Center(
//        child: Text('no data set in the userId document in firestore'),
//      );
//    }
//    if (snapshot.data['role'] == 'admin') {
//      return adminPage(snapshot);
//    } else {
//      return userPage(snapshot);
//    }
//  }

//  Center adminPage(DocumentSnapshot snapshot) {
//    return Center(
//        child: Text('${snapshot.data['role']} ${snapshot.data['name']}'));
//  }
//
//  Center userPage(DocumentSnapshot snapshot) {
//    return Center(child: Text(snapshot.data['name']));
//  }
}
