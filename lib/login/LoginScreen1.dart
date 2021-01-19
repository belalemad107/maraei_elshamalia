import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:maraei_elshamalia/login/LoginScreen2.dart';
class LoginScreen1 extends StatefulWidget {
  @override
  _LoginScreen1State createState() => _LoginScreen1State();
}
class _LoginScreen1State extends State<LoginScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 150),
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/logowhite.png',width: 150,height: 150,),
              SizedBox(height: 30,),
              Text('اختر لغة التطبيق',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text(translator.translate('appTitle')),
              SizedBox(height: 20,),
              InkWell(
                onTap:(){ Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen2()));},
                child: Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color:Colors.black )),
                  child: Center(child: Text('عربي',style: TextStyle(fontSize: 20),)),width: MediaQuery.of(context).size.width-60,height: 50,),
              ),
              SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color:Colors.black ),color: Colors.black,
                ),
                child: Center(child: Text('English',style: TextStyle(color: Colors.white,fontSize: 20),)),width: MediaQuery.of(context).size.width-60,height: 50,),
              OutlineButton(
                child: Text(
                  translator.translate('buttonTitle'),
                ),
                onPressed: (){
                  translator.setNewLanguage(
                      context,
                      newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                      restart: true);
                }
              )
            ],
          ),
        ),
      ),
    );
  }
}
