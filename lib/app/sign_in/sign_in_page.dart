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
    );
  }

  Widget _buildContent() {
    return Container(
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.orange,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Container(
            color: Colors.red,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
          Container(
            color: Colors.blue,
            child: SizedBox(
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
//sd