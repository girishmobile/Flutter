
import 'package:flutter/material.dart';
import 'package:leanstram/customColors.dart';
import 'package:leanstram/customFont.dart';

class singupPage extends StatefulWidget{
  _singupPageState createState() => _singupPageState();
}
class _singupPageState extends State<singupPage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
      children:<Widget> [
        new Container(
          decoration: new BoxDecoration(
              image: new DecorationImage(
                  image: AssetImage("images/background-1.png"),
                  fit: BoxFit.fill)),
        ),
        CustomScrollView(
           slivers: <Widget>[
           SliverAppBar(
             stretch: true,
             floating:false,
             leading: IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back,color: Colors.white,)),//Icon(Icons.arrow_back,color: Colors.white,),
             expandedHeight: 109,// MediaQuery.of(context).size.height * 0.3,
             automaticallyImplyLeading: true,
             backgroundColor: Colors.transparent,
             shadowColor: Colors.transparent,
             flexibleSpace:Stack (
               children: <Widget>[
                 Positioned.fill(
                   //child:Image.network('https://picsum.photos/500/500', fit: BoxFit.cover),
                     child: Image.asset("images/top_header.png",alignment: Alignment.topCenter,fit: BoxFit.cover,)
                 ),
               ],
             ),

           ),
             SliverToBoxAdapter(
               child: Column(
                 children:<Widget> [
                   new Padding(padding: EdgeInsets.only(top: 45)),
                   Text("Sign Up",
                       style: TextStyle(
                           fontSize: 22,
                           fontFamily: customFont.AcuminPro,
                           fontWeight: FontWeight.w800,
                           color: customColors.colorText)),
                   new Padding(padding: EdgeInsets.only(top: 10)),
                   Text("Let's create your account",
                       style: TextStyle(
                           fontFamily: customFont.AcuminPro,
                           color: customColors.colorLightText,
                           fontWeight: FontWeight.w300)),
                   new Padding(padding: EdgeInsets.only(top: 0.0)),
                   Card(
                     margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                     child: Container(
                       padding: EdgeInsets.only(left: 10, right: 10),
                       alignment: Alignment.center,
                       child: TextField(
                         decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: 'First Name*',
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
                         decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: 'Last Name*',
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
                         decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: 'Email*',
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
                         decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: 'Phone',
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
                   Card(
                     margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                     child: Container(
                       padding: EdgeInsets.only(left: 10, right: 10),
                       alignment: Alignment.center,
                       child: TextField(
                         decoration: InputDecoration(
                             border: InputBorder.none,
                             hintText: 'Confirm Password*',
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
                       print("login pressed");
                     },
                     child: Container(
                       alignment: Alignment.center,
                       margin: EdgeInsets.only(left: 36, right: 36, top: 22),
                       padding: EdgeInsets.only(left: 36, right: 36),
                       child: Text(
                         "SIGN UP".toUpperCase(),
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
                   new Padding(padding: EdgeInsets.only(top: 85)),
                   InkWell(
                     onTap: (){
                       Navigator.of(context).pop();
                     },
                     child: Text("Already have an account ?",style:TextStyle(fontSize: 15,fontFamily: customFont.AcuminPro,fontWeight: FontWeight.w400,color: customColors.colorButton)),
                   ),
                   new Padding(padding: EdgeInsets.only(top: 45)),
                 ],
               ),
             )
           ],
        ),
       // IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back,color: Colors.white,),padding: EdgeInsets.only(left: 10,top: 25),),
      ],

      ),
    );
  }

}