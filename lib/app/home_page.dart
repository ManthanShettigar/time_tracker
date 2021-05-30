import 'package:flutter/material.dart';
import 'package:time_tracker/services/auth.dart';

class Homepage extends StatelessWidget {
  // passing onSignOut as a parameter to the Homepage & it is of type voidcallback which is a function
  final VoidCallback onSignOut;
  final AuthBase auth;

  const Homepage({Key? key, required this.onSignOut, required this.auth}) : super(key: key);
  //Sign out the current user from the app and firebase
  Future<void> _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          TextButton(
              onPressed: _signOut,
              child: Icon(
                Icons.logout_sharp,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
