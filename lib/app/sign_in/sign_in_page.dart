import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Time Tracker')),
        elevation: 2,
      ),
      body: _buildContent(),
      backgroundColor: Colors.amber,
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
          SizedBox(height: 8),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)))),
            child: Row(
              children: [
                Icon(Icons.facebook),
                SizedBox(
                  width: 80,
                ),
                Text(
                  'Sign In With Google!',
                  style: TextStyle(color: Colors.black, fontSize: 15),
                )
              ],
            ),
            onPressed: () {
              print('button pressed');
            },
          ),
        ],
      ),
    );
  }
}
