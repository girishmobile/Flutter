import 'package:flutter/material.dart';

class CurrentDeals extends StatefulWidget {
  _CurrentDeals createState() => _CurrentDeals();
}
class _CurrentDeals extends State<CurrentDeals> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
       appBar: AppBar(
         title: Text('Current deals'),
         flexibleSpace: Container(
           decoration: BoxDecoration(
             image: DecorationImage(
               image: AssetImage('images/nav-header.png'),
               fit: BoxFit.cover,
             ),
           ),
         ),
       ),
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10),
              color: Colors.amber,
              height: 120,
            ),
            Container(
              margin: EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 34),
              color: Colors.amber,
              height: 120,
            )

          ],
        ),
      ),
    );
  }
}
