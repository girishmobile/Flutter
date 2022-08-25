
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:leanstram/customFont.dart';
import 'package:leanstram/loginPage.dart';
class splashScreen extends StatefulWidget{
  @override
 _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
{
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 1), (){
    // Navigator.push(context, MaterialPageRoute(builder: (context) => loginPage()));
    Navigator.of(context).push(_createRoute());

    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        children:<Widget> [
          Image.asset("images/launch_image.png",width: double.infinity,height: double.infinity,fit: BoxFit.cover,),
          Center(
              child: Container(
                margin: EdgeInsets.all(54),
                //padding: EdgeInsets.all(54),
                child:Image.asset("images/logo-circle.png",fit:BoxFit.cover,alignment: Alignment.bottomCenter),
              )
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children:<Widget> [
              Container(
                width: double.infinity,
                height: 49,
                margin: EdgeInsets.only(left: 36,right: 36,bottom: 20),
                child: Image.asset("images/ls-logo.png",fit: BoxFit.contain),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 36,right: 36,bottom: 10),
                width: double.infinity,
                //height: 64,
                child: Text("DIGITAL FUNDRAISING ⁃ DIGITAL ACCESS",style: TextStyle(fontFamily: customFont.AcuminPro,color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500)),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left: 36,right: 36,bottom: 36),
                width: double.infinity,
                //height: 64,
                child: Text("Centralize ⁃ Consolidate ⁃ Connect",style: TextStyle(fontFamily:customFont.AcuminPro,color: Colors.white,letterSpacing: 1),),
              )
            ],
          )
        ],
      ),
    );
  }
}


Route _createRoute(){
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation)=> loginPage(),
    transitionsBuilder: (context, animation,secondaryAnimation,child){
      return child;
    }
  );
}
