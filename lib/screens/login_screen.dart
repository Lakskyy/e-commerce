import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
CircleAvatar(
  radius: 50,
  backgroundImage: AssetImage('assets/images/logo.jpg'),
),

            SizedBox(height: 40),
            TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: Text('Forgot Password?'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/list');
              },
              child: Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
