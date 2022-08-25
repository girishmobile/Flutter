import 'dart:async';
import 'package:flutter/material.dart';
import 'package:silver_appbar/homepage.dart';
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
    Timer(Duration(seconds: 2),(){
      //Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => homePage()));
      //Navigator.of(context).push(new homePageRoute());
      /*
      Navigator.push(context, PageRouteBuilder(
                    pageBuilder: (context,animation,secondaryAnimation)=> homePage(),
        transitionsBuilder: (context, animation,secondaryAnimation,child){
                      return child;
        },
      ));
      */
      Navigator.of(context).push(_createRoute());
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
    backgroundColor: Colors.indigo,
      body: Center(
       child: Icon(Icons.home,size: 100,color: Colors.white,),
      ),
    );
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>  homePage(),
     transitionsBuilder: (context, animation, secondaryAnimation, child) {
      //return child;
       return new FadeTransition(
           opacity: animation,
           child: child
       );
     },
    /*
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);
      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },*/
  );
}