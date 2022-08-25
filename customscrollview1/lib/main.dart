import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',

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
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
      bool _pinned = true;
      bool _snap = false;
      bool _floating = false;

  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget> [
            Container(
              height: 50.0,
              child: DrawerHeader(
                  child: Center(child: Text('Header',style: TextStyle(color: Colors.white),),),
                  decoration: BoxDecoration(
                      color: Colors.black
                  ),
                  margin: EdgeInsets.all(0.0),
                  padding: EdgeInsets.all(0.0)
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),

          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget> [
          SliverAppBar(
            pinned: _pinned,
            floating: _floating,
            snap: _snap,
            expandedHeight: 220,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
          const  SliverToBoxAdapter(
            child: SizedBox(
              height: 40,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index){
                  return Container(
                    color: index.isOdd ? Colors.white : Colors.black12,
                    height: 100,
                      child: Center(
                        child: Text('$index', textScaleFactor: 3),
                      ),
                  );
                  },
                childCount: 100,
              )),
        ],
      ),
       bottomNavigationBar: BottomAppBar(
         
           child:ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
             children:<Widget> [
               Row(
                 children: [
                   const Text('Pinned'),
                    Switch(value: _pinned,
                        onChanged: (bool val){
                        setState(() {
                          _pinned = val;
                        });
                        },
                    ),
                 ],
               ),
               Row(
                 children: <Widget> [
                   const Text('Snap'),
                   Switch(value: _snap,
                     onChanged: (bool val){
                     setState(() {
                       _snap = val;
                       _floating = _floating || _snap;
                     });
                    },
                   ),
                 ],
               ),
               Row(
                 children: <Widget> [
                   const Text('floating'),
                   Switch(value: _floating,
                       onChanged: (bool val){
                        setState(() {
                          _floating = val;
                          _snap = _snap && _floating;
                        });

                       },),
                 ],
               )
             ],
           ),
       ),
      
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
