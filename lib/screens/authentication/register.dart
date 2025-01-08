import 'package:flutter/material.dart';
import 'package:todo/screens/authentication/log_in.dart';
import 'package:todo/widgets/login_btn.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/widgets/elevated_btn.dart';

class Register extends StatelessWidget {
  static const String routeName = "register";

  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('register'.tr()),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: Image.asset("assets/images/logo.png",
                      width: 136.w, height: 186.h),
                ),
                const SizedBox(
                  height: 24.0,
                ),

                /// First Name Btn
                LoginBtn(
                  show: false,
                  prefixIcon: const Icon(Icons.person_outline),
                  suffixIcon: const Icon(
                    Icons.hide_source,
                    color: Colors.transparent,
                  ),
                  tittle: "name".tr(),
                  textEditingController: TextEditingController(),
                ),
                const SizedBox(
                  height: 16.0,
                ),

                /// Email Btn
                LoginBtn(
                  show: false,
                  prefixIcon: const Icon(Icons.email),
                  suffixIcon: const Icon(
                    Icons.hide_source,
                    color: Colors.transparent,
                  ),
                  tittle: "email".tr(),
                  textEditingController: TextEditingController(),
                ),
                const SizedBox(
                  height: 16.0,
                ),

                /// Password Btn
                LoginBtn(
                  show: true,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                  tittle: "password".tr(),
                  textEditingController: TextEditingController(),
                ),
                const SizedBox(
                  height: 16.0,
                ),

                ///Re Password Btn
                LoginBtn(
                  show: true,
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye_rounded,
                  ),
                  tittle: "re_password".tr(),
                  textEditingController: TextEditingController(),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                ElevatedBtn(
                  routeName: HomeScreen.routeName,
                  lable: "create_account".tr(),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, LogIn.routeName);
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "already_have_account".tr(),
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const TextSpan(text: " "),
                          TextSpan(
                            text: "login".tr(),
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .copyWith(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
