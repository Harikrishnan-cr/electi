import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:electi_test/controller/core/color/colors.dart';
import 'package:electi_test/controller/core/style/text_style.dart';
import 'package:electi_test/controller/user_controller/user_data_controller.dart';
import 'package:electi_test/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

final userDataController = Get.put(UserDataController());

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    userDataController.getUserDeatails();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          canvasColor: AppColors.secondaryBlackColor,
        ),
        home: AnimatedSplashScreen(
            duration: 3000,
            splash: Text(
              'Electi',
              style: GoogleFont.splashText,
            ),
            nextScreen: HomeScreen(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: AppColors.secondaryGreyColor));
  }
}
