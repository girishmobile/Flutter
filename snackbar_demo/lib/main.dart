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
        primaryColor: Colors.black
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
  var lists = List<String>.generate(11, (index) => 'List $index');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(lists[index]),
            trailing: Container(
              width: 60,
              child: FlatButton(
                child: Icon(
                  Icons.delete,
                  color: Colors.grey,
                ),
                onPressed: () {
                  showSnackBar(context, index);
                },
              ),
            ),
          );
        },
      ),
    );
  }
  void showSnackBar(BuildContext context, int index)
  {

  }
}
