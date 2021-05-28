import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final VoidCallback onSignOut;

  const Homepage({Key? key, required this.onSignOut}) : super(key: key);
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
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
