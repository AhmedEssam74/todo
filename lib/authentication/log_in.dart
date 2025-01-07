import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  static const String routeName = "logIn";
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log In'),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Simulate login logic
                print('Logged in');
              },
              child: const Text('Log In'),
            ),
          ],
        ),
      ),
    );
  }
}
