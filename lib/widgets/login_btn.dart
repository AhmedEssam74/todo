import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBtn extends StatelessWidget {
  late String tittle;
  late Icon prefixIcon;
  late Icon suffixIcon;
  late bool show;
  late TextEditingController textEditingController;

  LoginBtn({
    super.key,
    required this.tittle,
    required this.prefixIcon,
    required this.suffixIcon,
    required this.show,
    required this.textEditingController,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: show,
      obscuringCharacter: '*',
      style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: Theme.of(context).focusColor,
          ),
      controller:textEditingController ,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 16.h),
        labelText: tittle,
        labelStyle: Theme.of(context).textTheme.titleSmall!.copyWith(
              color: Theme.of(context).canvasColor,
            ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        prefixIconColor: Theme.of(context).canvasColor,
        suffixIconColor: Theme.of(context).canvasColor,
        iconColor: Theme.of(context).focusColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Theme.of(context).focusColor,
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(
            color: Theme.of(context).focusColor,
            width: 2,
          ),
        ),
        // validator: (value) {
        //   if (value == null || value.isEmpty) {
        //     return 'Please enter your email';
        //   }
        //   final emailRegex = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
        //   if (!emailRegex.hasMatch(value)) {
        //     return 'Please enter a valid email address';
        //   }
        //   return null;
        // },
      ),
    );
  }
}
