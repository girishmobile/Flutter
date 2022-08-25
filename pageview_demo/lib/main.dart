import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';
import 'package:pageview_demo/helpers/iconhelper.dart';
import 'package:pageview_demo/helpers/utils.dart';
import 'package:pageview_demo/pages/OnboardingPage.dart';
import 'package:pageview_demo/pages/WelcomePage.dart';
import 'package:pageview_demo/pages/categorylistpage.dart';
import 'package:pageview_demo/pages/mappage.dart';
import 'package:pageview_demo/pages/selectedcategorypage.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        //primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MapPage()//SplashPage(duration: 3,goToPage: WelcomePage())//CategoryListPage()// WelcomePage(),OnboardingPage()// // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
class IconFont extends StatelessWidget{
  Color? color;
  double? size;
  String? iconName;
  IconFont({this.color,this.size,this.iconName});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(this.iconName ?? 'a',
      style: TextStyle(color: this.color,fontSize: this.size,fontFamily: 'Barlow'),);
  }
}
class SplashPage extends StatelessWidget{
  int duration = 0;
  Widget goToPage;
  SplashPage({required this.goToPage, required this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: this.duration),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => this.goToPage));

    });
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: AppColors.MAIN_COLOR,
        alignment: Alignment.center,
        child:IconFont(
          color: Colors.white,
          iconName: IconFontHelper.LOGO,
          size: 100,
        ),
      ),
    );
  }
}


