// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gls_euniverse/barcodePage.dart';
import 'package:gls_euniverse/main.dart';
import 'package:gls_euniverse/qrPage.dart';
// import 'dart:ui' as ui;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int myIndex = 1;
  List<Widget> widgetList = [
    qrPage(),
    homePageScreen(),
    barcodePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: CupertinoColors.activeBlue,
        onTap: (index) {
          setState(() {
            myIndex = index;
          });
        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR Code'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.bar_chart_sharp), label: 'Barcode'),

        ],
      ),
      body: Center(
        child: widgetList[myIndex],
      ),
    );
  }
}
