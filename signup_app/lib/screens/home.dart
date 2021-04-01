import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:signup_app/screens/login.dart';

class HomeScreen extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: deprecated_member_use
        child: FlatButton(
            onPressed: () {
              auth.signOut().then((value) => Navigator.of(context)
                  .pushReplacement(
                      MaterialPageRoute(builder: (context) => LoginScreen())));
            },
            child: Text("Logout")),
      ),
    );
  }
}
