// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class qrPage extends StatefulWidget {
  const qrPage({super.key});

  @override
  State<qrPage> createState() => _qrPageState();
}

class _qrPageState extends State<qrPage> {
  int myIndex = 0;
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
              //student Image
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/profile.png'),
              ),
              SizedBox(
                height: 10,
              ),
              // student Name
              Text(
                "Abhi Engraver",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              // Qr Code
              Image(
                image: AssetImage('images/qrCode.webp'),
                height: 250,
              ),
              SizedBox(
                height: 10,
              ),
              // Enrollment no of student
              Text(
                "201800319010099",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              // student Email
              Text(
                "engraver13@gmail.com",
                style: TextStyle(fontSize: 15, color: Colors.grey),
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
                child: Center(
                    child:
                        //Department
                        Text("Faculty of Computer Application and IT - FCAIT")),
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
                child: Center(
                    //batch,course
                    child: Text(
                        "Masters of Science in Information Technology\nBatch : 2023-2025")),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/barcodePage');
                  },
                  child: Text('Barcode Page'))
            ],
          ),
        ),
      ),
    );
  }
}
