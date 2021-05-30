import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/home_page.dart';
import 'package:time_tracker/app/sign_in/sign_in_page.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  // nullable ? user which can be null ; only declaration not initialized .
  User? _user;
  // update the user and rebuild the widget
  void updateUser(User? user) {
    print('User id :${user?.uid}');
    setState(() {
      _user = user;
    });
  }

  //Retrieve current user from the firebase after exiting the application & without signing out
  // that is staying signed in  in the app
  @override
  void initState() {
    updateUser(FirebaseAuth.instance.currentUser);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //check if the user is signed in or not
    if (_user == null) {
      return SignInPage(onSignIn: updateUser);
    }
    return Homepage(
      onSignOut: () => updateUser(null),
    );
  }
}
