import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:todo/screens/authentication/forget_password.dart';
import 'package:todo/screens/authentication/register.dart';
import 'package:todo/screens/home_screen.dart';
import 'package:todo/widgets/elevated_btn.dart';
import 'package:todo/widgets/login_btn.dart';

class LogIn extends StatelessWidget {
  static const String routeName = "logIn";

  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('login'.tr()),
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
                  height: 18.0,
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
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, ForgetPassword.routeName);
                  },
                  child: Text(
                    textAlign: TextAlign.end,
                    "forget_password".tr(),
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).primaryColor,
                          decoration: TextDecoration.underline,
                        ),
                  ),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                ElevatedBtn(
                  routeName: HomeScreen.routeName,
                  lable: "login".tr(),
                ),
                const SizedBox(
                  height: 24.0,
                ),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, Register.routeName);
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: "don_not_have_account".tr(),
                            style: Theme.of(context).textTheme.titleSmall,
                          ),
                          const TextSpan(text: " "),
                          TextSpan(
                            text: "create_account".tr(),
                            style:
                                Theme.of(context).textTheme.titleSmall!.copyWith(
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
                const SizedBox(
                  height: 24.0,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Divider(
                        indent: 25,
                        endIndent: 15,
                        thickness: 2.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    Text(
                      "or".tr(),
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Expanded(
                      child: Divider(
                        indent: 15,
                        endIndent: 25,
                        thickness: 2.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).cardColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                          side: BorderSide(
                            color: Theme.of(context).primaryColor,
                            width: 1.0,
                          )),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, Register.routeName);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            FontAwesomeIcons.google,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: 8.0),
                          Text(
                            "log_in_with_google".tr(),
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
