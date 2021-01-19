import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}
class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height/2,
                child: Image.asset('assets/images/header.png'),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 20,),
                Center(child: Container(
                  height: 200,
                  width: 200,
                  child: Image.asset('assets/images/logoblack.png'),
                ),)
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 280,left: 40,right: 40),
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white,),
                width: MediaQuery.of(context).size.width-80,
                height: MediaQuery.of(context).size.height-300,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('تسجيل دخول',textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width-100,
                        child: TextField(
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                            hintText: 'رقم الجوال',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width-100,
                        child: TextField(
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                            hintText: 'كلمة المرور',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                      child: Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width-100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).primaryColor,
                        ),
                        child: Center(child: Text('تسجيل الدخول', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),),
                    ),
                    SizedBox(height: 20,),
                    Text('هل نسيت كلمة المرور ؟'),
                    SizedBox(height: 10,),
                    Text('ليس لديك حساب تسجيل جديد ؟'),
                  ],),),
            )
          ],
        ),
      ),
    );
  }
}
