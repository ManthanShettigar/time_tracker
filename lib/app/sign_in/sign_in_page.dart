import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker/app/sign_in/sign_in_button.dart';
import 'package:time_tracker/app/sign_in/socialsign_in_button.dart';

class SignInPage extends StatelessWidget {
  

  const SignInPage({Key? key, required this.onSignIn}) : super(key: key);
  //OnSignIn act as parameter of the SignInPage which takes an Arguement USer 
  final Function(User) onSignIn;
  //SignIn as anonymous
  Future<void> _signInAnonymously() async {
    try {
      final userCredentials = await FirebaseAuth.instance.signInAnonymously();
    print('${userCredentials.user!.uid}');
    onSignIn(userCredentials.user!);
    }
    catch (e){
      print(e.toString());
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Time Tracker')),
        elevation: 2,
      ),
      body: _buildContent(),
      backgroundColor: Colors.white70,
    );
  }

  Widget _buildContent() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Sign In',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 48),
          SocialSignInButton(
            color: Colors.white,
            borderRadius: 8,
            //TODO: Google auth
            onPressed: () {},
            text: 'Sign In With Google',
            textColor: Colors.black, assetName: 'images/google-logo.png',
          ),
          SizedBox(height: 8),
          SocialSignInButton(
            color: Color(0xff334D92),
            borderRadius: 8,
            //TODO: Google auth
            onPressed: () {},
            text: 'Sign In With Facebook',
            textColor: Colors.white, assetName: 'images/facebook-logo.png',
          ),
          SizedBox(height: 8),
          SignInButton(
            color: Colors.teal,
            borderRadius: 8,
            //TODO: Google auth
            onPressed: () {},
            text: 'Sign In With Email',
            textColor: Colors.white,
          ),
          SizedBox(height: 8),
          Text(
            'OR',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black87, fontSize: 14),
          ),
          SizedBox(height: 8),
          SignInButton(
            color: Colors.lightBlue,
            borderRadius: 8,
            onPressed: _signInAnonymously,
            text: 'Go Anonymous',
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
