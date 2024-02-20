// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  bool obscure_Text = true; //for hidding the password
  var roles = ["Admin", "Student", "Alumini", "Staff", "Guard"];
  String? role;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 800,
            // color: Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 80,
                // ),
                Text(
                  "Welcome Back!!",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      letterSpacing: 2),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  "Please enter your credentials",
                  style: TextStyle(fontSize: 12),
                ),
                SizedBox(
                  height: 40,
                ),
                // First : email text field
                Container(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Second : password field
                    Container(
                      width: 350,
                      child: TextField(
                        obscureText: obscure_Text,
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  //this for password show or not
                                  obscure_Text = !obscure_Text;
                                });
                              },
                              icon: Icon(Icons.remove_red_eye_rounded)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                //drop down menu for role selection
                // ignore: avoid_unnecessary_containers
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    // color: Colors.grey,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  width: 350,
                  child: DropdownButton(
                    hint: Text("Select Role"),
                    value: role,
                    items: roles.map((String role) {
                      return DropdownMenuItem(value: role, child: Text(role));
                    }).toList(),
                    onChanged: (String? selectedValue) {
                      setState(() {
                        role = selectedValue!;
                      });
                    },
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    isExpanded: true,
                    elevation: 8,
                    underline: Container(),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                //Login Button
                Container(
                    width: 350,
                    child: ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/studentHomePage');
                      },
                      child: Text(
                        "Log In",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey),
                    )),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
