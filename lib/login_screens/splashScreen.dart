import 'dart:async';
import 'dart:io';
import 'package:bus/login_screens/signIn.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => signIn()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: WillPopScope(
        onWillPop: (){
          return exit(0);
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/index-bg-pattern.png",
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              Image.asset(
                "assets/images/bus.png",
                fit: BoxFit.cover,
                width: 300,

              ),
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              CircularProgressIndicator(),

            ],

          ),



        ),
      ),
    );
  }
}
