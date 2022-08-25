import 'package:flutter/material.dart';
import 'package:leanstram/Dashboard/DashboardPage.dart';
import 'package:leanstram/customColors.dart';
import 'package:leanstram/customFont.dart';
import 'package:leanstram/forgotPassword.dart';
import 'package:leanstram/schoolPage.dart';
import 'package:leanstram/signupPage.dart';

class loginPage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var _formKey;
    final myController = TextEditingController();

    return Scaffold(
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: AssetImage("images/background-1.png"),
                    fit: BoxFit.fill)),
          ),
          SingleChildScrollView(

            child: new Container(
              child: Column(
                children: <Widget>[
                  Image.asset("images/top_header.png"),
                  new Padding(padding: EdgeInsets.only(top: 45)),
                  Text("Login",
                      style: TextStyle(
                          fontSize: 22,
                          fontFamily: customFont.AcuminPro,
                          fontWeight: FontWeight.w800,
                          color: customColors.colorText)),
                  new Padding(padding: EdgeInsets.only(top: 10)),
                  Text("Add your details to login",
                      style: TextStyle(
                          fontFamily: customFont.AcuminPro,
                          color: customColors.colorLightText,
                          fontWeight: FontWeight.w300)),
                  new Padding(padding: EdgeInsets.only(top: 0.0)),
                  Card(
                    margin: EdgeInsets.only(left: 36, right: 36, top: 36),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email*",
                            hintStyle: TextStyle(color: customColors.colorBorder,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,fontSize: 16),
                            contentPadding: const EdgeInsets.all(8)),
                        style: TextStyle(color: customColors.colorText,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,fontSize: 16),
                      ),
                    ),
                    elevation: 10,
                    shadowColor: customColors.colorShadow,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                  Card(
                    margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                    child: Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      alignment: Alignment.center,
                      child: TextField(
                        controller: myController,
                        obscureText: true,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Password*',
                            hintStyle: TextStyle(color: customColors.colorBorder,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,fontSize: 16),
                            contentPadding: const EdgeInsets.all(8)),
                        style: TextStyle(color: customColors.colorText,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,fontSize: 16),
                      ),
                    ),
                    elevation: 10,
                    shadowColor: customColors.colorShadow,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(28)),
                  ),
                  InkWell(
                    onTap: () {

                      Navigator.of(context).push(_createRouteForSchool());
                    },
                    child: Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 36, right: 36, top: 22),
                      padding: EdgeInsets.only(left: 36, right: 36),
                      child: Text(
                        "Login".toUpperCase(),
                        style: TextStyle(
                            color: customColors.colorWhite,
                            fontFamily: customFont.AcuminPro,
                            fontWeight: FontWeight.w700,
                            fontSize: 18),
                      ),
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: customColors.colorButton,
                        borderRadius: BorderRadius.circular(28),
                      ),
                    ),
                  ),
                  Container(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: customColors.colorButton,
                      ),
                      child: Text("Forgot password ?",style: TextStyle(fontSize: 13,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,color: customColors.colorLightText1)),
                      onPressed: (){
                        Navigator.of(context).push(_createRoute());
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top:40,bottom: 10),
                    child: Text("Or log in with",style: TextStyle(
                        fontFamily: customFont.AcuminPro,
                        color: customColors.colorLightText1,
                        fontWeight: FontWeight.w400,
                        fontSize: 13),),
                  ),
                  Container(
                    height: 192,
                    width: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: customColors.colorBorder,
                        style: BorderStyle.solid,
                        width: 1,
                      )
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 25,bottom: 20),
                          alignment: Alignment.center,
                          child: Image.asset("images/face-id.png",fit: BoxFit.cover,height: 47,width: 47,)
                        ),
                        Wrap(
                          spacing: 8.0,
                          runSpacing: 12,
                          children: [
                            Text("Log-in with",style: TextStyle(fontSize: 17,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w500,color: customColors.colorLightText1),),
                            Text("Face ID",style:TextStyle(fontSize: 17,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w500,color: customColors.colorRed)),
                            Text("Lock directly at your front \n camera to use Face ID",style: TextStyle(fontSize: 13,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w500,color: customColors.colorLightText1))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(10)),
                  Wrap(
                    spacing: 6.0,
                    children: [
                      Text("Don't have an account ?",style: TextStyle(fontSize: 14,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,color: customColors.colorLightText1),),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(_createRouteForSingUp());
                        },
                        child: Text("Sign Up",style:TextStyle(fontSize: 15,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,color: customColors.colorButton)),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(30)),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
Route _createRoute(){
  return PageRouteBuilder(
      pageBuilder: (context,animation,secondaryAnimation)=> forgotPassword(),
      transitionsBuilder: (context, animation,secondaryAnimation,child){
        return child;
      }
  );
}
Route _createRouteForSingUp(){
  return PageRouteBuilder(
      pageBuilder: (context,animation,secondaryAnimation)=> singupPage(),
      transitionsBuilder: (context, animation,secondaryAnimation,child){
        return child;
      }
  );
}
Route _createRouteForSchool(){
  return PageRouteBuilder(
      pageBuilder: (context,animation,secondaryAnimation)=> DashboardPage(),
      transitionsBuilder: (context, animation,secondaryAnimation,child){
        return child;
      }
  );
}