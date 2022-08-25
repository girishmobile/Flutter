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
        //primarySwatch: Colors.blue,
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
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
          slivers: <Widget> [
            SliverAppBar(
              stretch: true,
              floating: false,
              pinned: true,
              snap:  false,
              expandedHeight: MediaQuery.of(context).size.height * 0.3,
              flexibleSpace:FlexibleSpaceBar (
                stretchModes: <StretchMode>[
                  StretchMode.zoomBackground,
                  StretchMode.blurBackground,
                  StretchMode.fadeTitle
                ],
                title: const Text('Flight Report'),
                centerTitle: true,
                background: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg', fit: BoxFit.cover),
                    const DecoratedBox(decoration: BoxDecoration(
                      gradient:LinearGradient(
                        begin: Alignment(0.5, 0.5),
                        end:  Alignment(0.0, 0.0),
                        colors: <Color>[
                          Color(0x60000000),
                          Color(0x00000000),
                        ],
                      ),
                        
                    ),),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate:SliverChildListDelegate(
                  const <Widget> [
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Sunday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ), ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Monday'),
                    subtitle: Text('sunny, h: 80, l: 65'),
                  ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ), ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Monday'),
                    subtitle: Text('sunny, h: 80, l: 65'),
                  ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ), ListTile(
                    leading: Icon(Icons.wb_sunny),
                    title: Text('Monday'),
                    subtitle: Text('sunny, h: 80, l: 65'),
                  ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny_outlined),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                    ListTile(
                      leading: Icon(Icons.wb_sunny),
                      title: Text('Monday'),
                      subtitle: Text('sunny, h: 80, l: 65'),
                    ),
                  ],
                ),
            ),

          ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}