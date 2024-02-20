// ignore_for_file: camel_case_types

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gls_euniverse/barcodePage.dart';
import 'package:gls_euniverse/loginPage.dart';
import 'package:gls_euniverse/qrPage.dart';
import 'package:gls_euniverse/homePage.dart';

void main() {
  runApp(homePageScreen());
}

class homePageScreen extends StatefulWidget {
  const homePageScreen({super.key});

  @override
  State<homePageScreen> createState() => _homePageScreenState();
}

class _homePageScreenState extends State<homePageScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Get.toNamed('/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GLS_eUniverse",
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      getPages: [
        GetPage(
          name: '/',
          page: () => homePageScreen(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/login',
          page: () => loginPage(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/studentHomePage',
          page: () => HomePage(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/qrPage',
          page: () => qrPage(),
          transition: Transition.noTransition,
        ),
        GetPage(
          name: '/barcodePage',
          page: () {
            return barcodePage();
          },
          transition: Transition.noTransition,
        ),
      ],
      home: Scaffold(
        body: Center(
          child: Container(
              // width: 500,
              // height: 200,
              child: Center(
            child: Container(
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('images/qrCode.webp'),
                        width: 70,
                        height: 50,
                      ),
                      Text(
                        'GLS eUniVerse',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3),
                      )
                    ],
                  ),
                  Text(
                    'Your Digital Identity For Campus Connection',
                    style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.italic),
                  )
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}
