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
        primarySwatch: Colors.blue,
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          width: 300,
          height: 200,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.5),
            ),
            color: Colors.redAccent,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget> [
                const ListTile(
                  leading: Icon(Icons.album,size: 60,),
                  title: Text('Sonu Nigam',style: TextStyle(fontSize: 25),),
                  subtitle: Text('Best of Sonu Nigam Music.',style: TextStyle(fontSize: 15)),
                ),
                ButtonBar(
                  children: <Widget> [
                    RaisedButton(onPressed: (){

                    }, child: const Text('Play'),
                    ),
                    RaisedButton(onPressed: (){},
                      child: const Text('Pause'),
                    )
                  ],
                ),

              ],
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
