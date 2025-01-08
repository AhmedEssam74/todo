import 'package:flutter/material.dart';
import 'package:todo/widgets/theme_btn.dart';
import 'package:todo/widgets/translate_btn.dart';


class ProfileTap extends StatelessWidget {
  static const String routeName = "profile_tap";
  const ProfileTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Profile'),
            TranslateBtn(),
            ThemeBtn(),
          ],
        ),
      ),
    );
  }
}
