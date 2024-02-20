// ignore_for_file: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class barcodePage extends StatefulWidget {
  const barcodePage({super.key});

  @override
  State<barcodePage> createState() => _barcodePageState();
}

class _barcodePageState extends State<barcodePage> {
  int myIndex = 2;
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
          else if(index == 1){
            Get.toNamed('/studentHomePage');
          }


        },
        currentIndex: myIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: 'QR Code'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: 'Barcode'),

        ],
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //student Name
              Text(
                "Abhi Engraver",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              // student Email
              Text("engraver13@gmail.com"),
              SizedBox(
                height: 25,
              ),
              //Barcode
              Image(image: AssetImage('images/barcode.png')),
              SizedBox(
                height: 25,
              ),
              //student enrollment no
              Text(
                "MscA2310099001",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(8),
                width: 350,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                //batch,division,course
                child: Center(
                  child: Text(
                      "Masters of Science in Information Technology\n\nBatch: 2023-2025\n\nDiv: A "),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
