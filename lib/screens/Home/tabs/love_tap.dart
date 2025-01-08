import 'package:flutter/material.dart';

class LoveTap extends StatelessWidget {
  static const String routeName = "love-tap";
  const LoveTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Love Tap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text('Love Tap'),
            )
          ],
        ),
      ),
    );
  }
}
