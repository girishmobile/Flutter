import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:silver_appbar/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: splashScreen(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {

  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: CustomScrollView(
        slivers:<Widget> [
            SliverAppBar(
              pinned: _pinned,
              snap: _snap,
              floating: _floating,
              expandedHeight: 220.0,
              leading: Icon(Icons.arrow_back_ios),
              backgroundColor: Color.fromARGB(1, 38, 38, 38),
             brightness: Brightness.light,
             title: Text('MY REWARDS',style: TextStyle(fontSize: 18,color: Colors.white,fontWeight: FontWeight.bold)),
             // bottom: PreferredSize(child: Icon(Icons.linear_scale,size: 60.0,), preferredSize: Size.fromHeight(50.0)),
              flexibleSpace:FlexibleSpaceBar(
                //title: Column(
                  //crossAxisAlignment: CrossAxisAlignment.stretch,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  // children: <Widget>[
                  //   const Text("US\$ 123.456.78", textAlign: TextAlign.center,),
                  // ],
                //),
                centerTitle: true,
                background: Image.asset("images/abc.jpg",fit: BoxFit.fill,),

              ),
            ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
              child: Text('Scroll to see the  in effect'),
            ),
          ),
      SliverList(
        delegate: SliverChildListDelegate([
          ListTile(leading: Icon(Icons.volume_off), title: Text("Volume Off"),),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_mute), title: Text("Volume Mute")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),
          ListTile(leading: Icon(Icons.volume_down), title: Text("Volume Down")),

        ]),
      ),

        ],

      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
