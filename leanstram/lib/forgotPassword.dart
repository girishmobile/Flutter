import 'package:flutter/material.dart';
import 'package:leanstram/customColors.dart';
import 'package:leanstram/customFont.dart';

class forgotPassword extends StatefulWidget{

  _forgotPasswordState createState() => _forgotPasswordState();
}
class _forgotPasswordState extends State<forgotPassword>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children:<Widget> [
          new Container(
            decoration: BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage("images/background-1.png"),fit: BoxFit.fill)
            ),
          ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget> [
                Image.asset("images/top_header.png"),
                Padding(padding: EdgeInsets.only(top: 45)),
                Image.asset("images/lock.png",height:89,width:78,),
                new Padding(padding: EdgeInsets.only(top: 45)),
                Text("Forgot Password ?",
                    style: TextStyle(
                        fontSize: 22,
                        fontFamily: customFont.AcuminPro,
                        fontWeight: FontWeight.w800,
                        color: customColors.colorText)
                    ),
                new Padding(padding: EdgeInsets.only(top: 10)),
               Container(
                 alignment: Alignment.topCenter,
                 margin: EdgeInsets.only(left: 36,right: 36),
                 child:Text("Enter your email and we'll send an email with instructions to reset your password.",
                     style: TextStyle(
                         fontFamily: customFont.AcuminPro,
                         color: customColors.colorBorder,
                         fontWeight: FontWeight.w300,
                     ),
                   textAlign:TextAlign.center,
                  ),
               ),
                Card(
                  margin: EdgeInsets.only(left: 36, right: 36, top: 20),
                  child: Container(
                    //color: Colors.white,
                    //height: 50,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email*",
                          hintStyle: TextStyle(color: customColors.colorBorder,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,fontSize: 16),
                          contentPadding: const EdgeInsets.all(8)),
                          style: TextStyle(color: customColors.colorText,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,fontSize: 16),
                          keyboardType: TextInputType.emailAddress,

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
                    print("login pressed");
                  },
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.only(left: 36, right: 36, top: 22),
                    padding: EdgeInsets.only(left: 36, right: 36),
                    child: Text(
                      "reset password".toUpperCase(),
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

              ],
            ),
          ),
          IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back,color: Colors.white,),padding: EdgeInsets.only(left: 15,top: 36),),
        ],
      ),

    );
  }
}