import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:todo/main.dart';
import 'package:todo/screens/onBoarding/on_boarding_screen.dart';
import 'package:todo/widgets/elevated_btn.dart';
import 'package:todo/widgets/header_brand.dart';
import 'package:todo/widgets/intro_screen.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IntroductionScreen extends StatelessWidget {
  static const String routeName = "IntroductionScreen";

  const IntroductionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const HeaderBrand(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 28,
            ),
            const IntroScreen(),
            Text(
              "Introduction_title".tr(),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 28,
            ),
            Text(
              "Introduction_dec".tr(),
              style: Theme.of(context).textTheme.titleSmall,
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "language".tr(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                ToggleSwitch(
                  minWidth: 73.28.w,
                  minHeight: 30.76.h,
                  initialLabelIndex: context.locale.toString() == "en" ? 0 : 1,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Theme.of(context).primaryColor,
                  totalSwitches: 2,
                  icons: [
                    FontAwesomeIcons.flagUsa,
                    MdiIcons.abjadArabic,
                  ],
                  iconSize: 30.0,
                  activeBgColors: [
                    [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor
                    ],
                    [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor
                    ]
                  ],
                  // animate: true,
                  // curve: Curves.bounceOut,
                  onToggle: (index) {
                    if (index == 0) {
                      context.setLocale(
                        const Locale('en'),
                      );
                    } else {
                      context.setLocale(
                        const Locale('ar'),
                      );
                    }
                    print('switched to: $index');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "theme".tr(),
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                ),
                ToggleSwitch(
                  minWidth: 73.28.w,
                  minHeight: 30.76.h,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.white,
                  inactiveFgColor: Theme.of(context).primaryColor,
                  totalSwitches: 2,
                  icons: const [
                    FontAwesomeIcons.solidSun,
                    FontAwesomeIcons.moon,
                  ],
                  iconSize: 30.0,
                  activeBgColors: [
                    [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor
                    ],
                    [
                      Theme.of(context).primaryColor,
                      Theme.of(context).primaryColor
                    ]
                  ],
                  // animate: true,
                  // curve: Curves.bounceOut,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            ElevatedBtn(
              lable: "let’s_start".tr(),
              routeName: OnBoardingScreen.routeName,
            )
          ],
        ),
      ),
    );
  }
}
