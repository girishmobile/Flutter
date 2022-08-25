import 'package:flutter/material.dart';

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
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
   final List<Tab> myTabs = List.generate(10, (index) => Tab(text: 'TAB $index',));

  Widget build(BuildContext context) {
    return DefaultTabController(length: 10,
        child: Scaffold(
          appBar: AppBar(
         title: Text('Flutter Tabs Demo'),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.amberAccent,
            /*
            tabs: [
              Tab(icon: Icon(Icons.contacts),text: 'Tab1'),
              Tab(icon: Icon(Icons.camera_alt),text: 'Tab2',),
              Tab(icon: Icon(Icons.contacts),text: 'Tab3'),
              Tab(icon: Icon(Icons.camera_alt),text: 'Tab4',),
              Tab(icon: Icon(Icons.contacts),text: 'Tab5'),
              Tab(icon: Icon(Icons.camera_alt),text: 'Tab6',),
              Tab(icon: Icon(Icons.contacts),text: 'Tab7'),
              Tab(icon: Icon(Icons.camera_alt),text: 'Tab8',)
            ],*/
            tabs: myTabs,
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab) {
        return Center(child: Text('$tab.text'));
        }).toList(),
      ),

    ));
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'It is a contact tab, which is responsible for displaying the contacts stored in your mobile',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text('It is a contact tab, which is responsible for displaying the contacts stored in your mobile'),
      ),
    );
  }
}
class SecondScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Text('It is a second layout tab, which is responsible for taking pictures from your mobile'),
      ),
    );
  }

}
