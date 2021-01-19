import 'dart:async';
import 'package:flutter/material.dart';

import 'login/LoginScreen1.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoginScreen1())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(child: Center(child:Image.asset('assets/images/logowhite.png',width: 300,height: 150,) ,)));
  }
}
