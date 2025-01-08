import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  static const String routeName = "home_tap";

  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Tab'),
      ),
      body: Center(
        child: Text('Welcome to the Home Tab!'),
      ),
    );
  }
}
