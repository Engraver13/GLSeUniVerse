// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gls_euniverse/barcodePage.dart';
import 'package:gls_euniverse/main.dart';
import 'package:gls_euniverse/qrPage.dart';
// import 'dart:ui' as ui;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 1;
  DateTime timeBackPressed = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: CupertinoColors.activeBlue,
          onTap: (index) {
            setState(() {
              myIndex = index;
            });

            if (index == 0){
              Get.toNamed('/qrPage');
            }
            else if(index == 2){
              Get.toNamed('/barcodePage');
            }


          },
          currentIndex: myIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR Code'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: 'Barcode'),

          ],
        ),
        body: Column(
          children: [
            Container(
              width: 550,
              height: 380,
              child: CustomPaint(
                  size: Size(
                      500,
                      (500 * 0.725)
                          .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 14, 0, 0),
                        padding: EdgeInsets.fromLTRB(0, 12, 0, 0),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                              height: 50,
                            ),
                            Icon(
                              Icons.menu,
                              size: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hello User",
                        style: TextStyle(
                            fontSize: 20, color: Colors.white, letterSpacing: 2),
                      ),
                    ],
                  )),
            ),
            Container(
              height: 375,
              padding: EdgeInsets.all(8),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      width: 350,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 350,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 350,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Container(
                      width: 350,
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
           // ElevatedButton(
               //   onPressed: () {
                 //   Get.toNamed('/qrPage');
                 // },
                 // child: Text("QrPage")),
          ],
        ),
      );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(251, 64, 140, 242)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0018500, size.height * -0.0059311);
    path_0.lineTo(size.width * 1.0021550, size.height * -0.0042603);
    path_0.lineTo(size.width * 1.0053550, size.height * 0.9368276);
    path_0.quadraticBezierTo(size.width * 0.9723400, size.height * 0.8254690,
        size.width * 0.8778750, size.height * 0.7409793);
    path_0.cubicTo(
        size.width * 0.7804150,
        size.height * 0.6695241,
        size.width * 0.6728200,
        size.height * 0.6387931,
        size.width * 0.5163900,
        size.height * 0.6343586);
    path_0.cubicTo(
        size.width * 0.3868950,
        size.height * 0.6243931,
        size.width * 0.1966100,
        size.height * 0.6801103,
        size.width * 0.1211000,
        size.height * 0.7504276);
    path_0.quadraticBezierTo(size.width * 0.0448500, size.height * 0.8066483,
        size.width * -0.0010800, size.height * 0.9655172);

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(0, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
