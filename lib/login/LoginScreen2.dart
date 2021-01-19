import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maraei_elshamalia/login/signIn.dart';
class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}
class _LoginScreen2State extends State<LoginScreen2> {
  bool checkboxvalue = true;
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
                    child: Text('تسجيل جديد',textAlign: TextAlign.end,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width-100,
                      child: TextField(
                        textAlign: TextAlign.end,
                        decoration: InputDecoration(
                          hintText: 'اسم المستخدم',
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
                            hintText: 'البريد الالكتروني',
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
                    SizedBox(height: 10,),
                    Center(
                      child: Container(
                        height: 45,
                        width: MediaQuery.of(context).size.width-100,
                        child: TextField(
                          textAlign: TextAlign.end,
                          decoration: InputDecoration(
                            hintText: 'تأكيد كلمة المرور',
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        Checkbox(
                        value: checkboxvalue,
                        activeColor: Colors.black,
                        onChanged: (value){
                          setState(() {
                            checkboxvalue = value;
                          });
                        },
                      ),
                      SizedBox(width: 10,),
                      Text('قرأت واوافق علي الشروط والاحكام'),

                      ],
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
                        child: Center(child: Text('استمرار', style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),)),),
                    ),
                      SizedBox(height: 5,),
                      InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                          },
                          child: Text('لديك حساب ؟ تسجيل دخول')),
              ],),),
            )
          ],
        ),
      ),
    );
  }
}
