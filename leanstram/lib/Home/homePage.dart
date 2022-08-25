import 'package:flutter/material.dart';
import 'package:leanstram/CurrentDeals/CurrentDeals.dart';
import 'package:leanstram/customColors.dart';
import 'package:leanstram/customFont.dart';
import 'package:leanstram/loginPage.dart';
import '../Indicator.dart';
class homePage extends StatefulWidget {
  _homePageState createState() => _homePageState();
}
class _homePageState extends State<homePage> {
  PageController _pageController = PageController();
  double currentPage = 0;
  @override
  void initState() {
    _pageController.addListener(() {
      setState(() {
        currentPage = _pageController.page!;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                height: 201,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      child: PageView(
                        controller: _pageController,
                        onPageChanged: (value) {},
                        allowImplicitScrolling: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        children: <Widget>[
                          Image.network('https://picsum.photos/500/500',
                              fit: BoxFit.cover),
                          Image.network('https://picsum.photos/500/500',
                              fit: BoxFit.cover),
                          Image.network('https://picsum.photos/500/500',
                              fit: BoxFit.cover),
                          Image.network('https://picsum.photos/500/500',
                              fit: BoxFit.cover),
                          Image.network('https://picsum.photos/500/500',
                              fit: BoxFit.cover)
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      padding: EdgeInsets.only(bottom: 15, right: 15),
                      //color: Colors.greenAccent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Indicator(
                            controller: _pageController,
                            itemCount: 5,
                          )
                        ],
                      ),
                    ),
                    Container(
                        margin:
                            EdgeInsets.only(left: 15, bottom: 15, right: 15),
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          "Stay connected with wifi\non the go!",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: customFont.AcuminPro,
                              fontWeight: FontWeight.w700,
                              fontSize: 20),
                        ))
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: customColors.colorBorder, spreadRadius: 0.25)
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 20)),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Text("Pell city schools",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: customFont.AcuminPro,
                              color: customColors.colorText,
                              fontWeight: FontWeight.w700)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 5),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.remove_red_eye_outlined,
                                size: 20,
                                color: customColors.colorRed,
                              )),
                          Text('Profile View | Account Information')
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Padding(padding: EdgeInsets.only(top: 0.0)),
              Card(
                margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                child: InkWell(
                  child:  Container(
                    padding: EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    height: 112,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          const Color(0xFF5063A1),
                          const Color(0xFF788CD1),
                        ],
                      ),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'images/logo-circle.png',
                          height: 80,
                          width: 80,
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        new Flexible(
                            flex: 2,
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              // to wrap text widget
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // to wrap text widget
                              children: <Widget>[
                                new Text(
                                  "Current Deals",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: customFont.AcuminPro,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                                Padding(padding: EdgeInsets.only(top: 10)),
                                new Text(
                                  "Pell City Schools appreciates \nyour interest.",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: customFont.AcuminPro,
                                      fontSize: 13),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                )
                              ],
                            )),
                        new Expanded(child: new Row())
                      ],
                    ),
                  ),
                  onTap: (){ // for got  to current deals page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CurrentDeals()));
                    
                  },
                ),

                elevation: 5,
                shadowColor: customColors.colorShadow,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              Card(
                margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  height: 112,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/logo-circle.png',
                        height: 80,
                        width: 80,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      new Flexible(
                          flex: 2,
                          child: new Column(
                            mainAxisSize: MainAxisSize.min,
                            // to wrap text widget
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // to wrap text widget
                            children: <Widget>[
                              new Text(
                                "Marketplace",
                                style: TextStyle(
                                    color: customColors.colorText,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              new Text(
                                "Pell City Schools appreciates \nyour interest.",
                                style: TextStyle(
                                    color: customColors.colorBorder,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 13),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )
                            ],
                          )),
                      new Expanded(child: new Row())
                    ],
                  ),
                ),
                elevation: 5,
                shadowColor: customColors.colorShadow,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              Card(
                margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  height: 112,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/logo-circle.png',
                        height: 80,
                        width: 80,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      new Flexible(
                          flex: 2,
                          child: new Column(
                            mainAxisSize: MainAxisSize.min,
                            // to wrap text widget
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // to wrap text widget
                            children: <Widget>[
                              new Text(
                                "Tickets",
                                style: TextStyle(
                                    color: customColors.colorText,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              new Text(
                                "Pell City Schools appreciates \nyour interest.",
                                style: TextStyle(
                                    color: customColors.colorBorder,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 13),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )
                            ],
                          )),
                      new Expanded(child: new Row())
                    ],
                  ),
                ),
                elevation: 5,
                shadowColor: customColors.colorShadow,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              Card(
                margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  height: 112,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/logo-circle.png',
                        height: 80,
                        width: 80,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      new Flexible(
                          flex: 2,
                          child: new Column(
                            mainAxisSize: MainAxisSize.min,
                            // to wrap text widget
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // to wrap text widget
                            children: <Widget>[
                              new Text(
                                "Fees",
                                style: TextStyle(
                                    color: customColors.colorText,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              new Text(
                                "Pell City Schools appreciates \nyour interest.",
                                style: TextStyle(
                                    color: customColors.colorBorder,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 13),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )
                            ],
                          )),
                      new Expanded(child: new Row())
                    ],
                  ),
                ),
                elevation: 5,
                shadowColor: customColors.colorShadow,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              Card(
                margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                child: Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.center,
                  height: 112,
                  child: Row(
                    children: <Widget>[
                      Image.asset(
                        'images/logo-circle.png',
                        height: 80,
                        width: 80,
                      ),
                      Padding(padding: EdgeInsets.only(left: 10)),
                      new Flexible(
                          flex: 2,
                          child: new Column(
                            mainAxisSize: MainAxisSize.min,
                            // to wrap text widget
                            crossAxisAlignment: CrossAxisAlignment.start,
                            // to wrap text widget
                            children: <Widget>[
                              new Text(
                                "Needs",
                                style: TextStyle(
                                    color: customColors.colorText,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                              Padding(padding: EdgeInsets.only(top: 10)),
                              new Text(
                                "Pell City Schools appreciates \nyour interest.",
                                style: TextStyle(
                                    color: customColors.colorBorder,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: customFont.AcuminPro,
                                    fontSize: 13),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              )
                            ],
                          )),
                      new Expanded(child: new Row())
                    ],
                  ),
                ),
                elevation: 5,
                shadowColor: customColors.colorShadow,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
              ),
              Container(
                height: 218,
                margin: EdgeInsets.only(left: 36, right: 36, top: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: customColors.colorBorder),
              ),
              Padding(padding: EdgeInsets.only(top: 25))
            ],
          ),
        ),

        // IconButton(onPressed: ()=> Navigator.of(context).pop(), icon: Icon(Icons.arrow_back,color: Colors.white,),padding: EdgeInsets.only(left: 10,top: 25),),
      ],
    );
  }
}
