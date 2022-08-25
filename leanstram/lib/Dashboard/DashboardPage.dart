import 'package:flutter/material.dart';
import 'package:leanstram/Home/homePage.dart';
import 'package:leanstram/DealsNearMe/DealsNearMe.dart';
import 'package:leanstram/MyRewards/MyRewards.dart';
import 'package:leanstram/MyTickets/MyTickets.dart';
import 'package:leanstram/customColors.dart';
import 'package:leanstram/customFont.dart';
import 'package:leanstram/loginPage.dart';

class DashboardPage extends StatefulWidget {
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedItem = 1;
  bool isBackArrow = false;
  List<int> intArray = [];

  _getdrawerItems(int pos) {
    this.intArray.add(selectedItem);
    print('value of array = $intArray');
    switch (pos) {
      case 1:
        return new homePage();
      case 2:
        return new DealsNearMe();
      case 3:
        return new MyTickets();
      case 4:
        return new MyRewards();
      default:
        return new Text("Error");
    }
  }
  _onselectedItem(int index) {
    setState(() {
      selectedItem = index;
      //Navigator.of(context).pop();
    });
  }
  Widget _createHeader1() {
    return Container(
      height: 144,
      child: DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/menu-header.png"),
                fit: BoxFit.cover)),
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 20, right: 10),
              child: Image.asset(
                'images/logo-circle.png',
                height: 70,
                width: 70,
              ),
            ),
            new Flexible(
                child: new Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Olivia Johnson',
                  style: TextStyle(
                    color: customColors.colorWhite,
                    fontFamily: customFont.AcuminPro,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  textAlign: TextAlign.left,
                ),
                Text(
                  'Davenport, IA ',
                  style: TextStyle(
                      color: customColors.colorWhite,
                      fontFamily: customFont.AcuminPro,
                      fontWeight: FontWeight.w400,
                      fontSize: 13),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 0.0,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 32,
              width: 32,
              child: IconButton(
                icon: Icon(Icons.menu),
                padding: EdgeInsets.zero,
                onPressed: () => _scaffoldKey.currentState?.openDrawer(),
              ),
            ),
            Visibility(
              visible: isBackArrow,
              child: Container(
                margin: EdgeInsets.only(left: 0),
                height: 32,
                width: 32,
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    this.intArray.removeLast();
                    print('removeLast of array = $intArray');
                    int last = this.intArray.last;
                    print('value of last object $last');
                    _onselectedItem(last);
                    //Navigator.pop(context);
                  },
                ),
              ),
            ),
          ],
        ),
        centerTitle: false,
        actions: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            //mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text('Online'),
            ],
          )
        ],
        toolbarHeight: 108,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        flexibleSpace: ClipRRect(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
              bottomLeft: Radius.circular(30)),
          //child: Image.network('https://picsum.photos/500/500',fit: BoxFit.cover,),
          child: Image.asset(
            'images/logo-temp.jpg',
            fit: BoxFit.cover,
          ),
          clipBehavior: Clip.antiAlias,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(bottom: 40),
          children: <Widget>[
            _createHeader1(),
            SizedBox(
              height: 5,
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-home.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = false;
                _onselectedItem(1);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "Deals Near Me",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-map.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(2);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "My Tickets",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-ticket.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(3);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "My Rewards",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-rewards.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(4);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "Notifications",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-notification.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(5);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "Profile",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-profile.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(6);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "User Preferences",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-setting.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(7);
              },
            ),
            Container(
              height: 1,
              margin: EdgeInsets.only(top: 1),
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Image.asset(
                'images/menu-line-1.png',
                fit: BoxFit.cover,
              ),
            ),
            ListTile(
              title: Text(
                "Logout",
                style: TextStyle(
                    fontFamily: customFont.AcuminPro,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
              leading: Image.asset(
                'images/menu-logout.png',
                height: 36,
                width: 36,
              ),
              onTap: () {
                this.isBackArrow = true;
                _onselectedItem(8);
              },
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20),
              width: double.infinity,
              height: 50,
              child: Text(
                '© Copyright 2021',
                style: TextStyle(
                    fontSize: 13,
                    fontFamily: customFont.AcuminPro,
                    fontWeight: FontWeight.w400,
                    color: customColors.colorBorder),
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Positioned.fill(
              //child:Image.network('https://picsum.photos/500/500', fit: BoxFit.cover),
              child: Image.asset(
            "images/background-1.png",
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
          )),
          new Container(
            child: _getdrawerItems(selectedItem),
          ),
        ],
      ),
    );
  }
}
