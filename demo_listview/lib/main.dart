import 'dart:async';

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
        primaryColor: const Color(0xFF43a047),
        accentColor: const Color(0xFFffcc00),
        primaryColorBrightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Basic Listview'),
      debugShowCheckedModeBanner: false,
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
  var products = List<String>.generate(500, (index) => 'Product List $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: products.length,
          itemBuilder: (context,index){
          return ListTile(
            title: Text('${products[index]}'),
            onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Gridview()));
            },
          );
          }),
      /*
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Map',style:TextStyle(fontSize: 16)),
            leading: Icon(Icons.map),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
            height: 0.5,
            thickness: 0.5,
            color: Colors.black26,
          ),
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text('Album'),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
            height: 0.5,
            thickness: 0.5,
            color: Colors.black26,
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text('Phone'),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
            height: 0.5,
            thickness: 0.5,
            color: Colors.black26,
          ),
          ListTile(
            leading: Icon(Icons.contacts),
            title: Text('Contact'),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
            height: 0.5,
            thickness: 0.5,
            color: Colors.black26,
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Setting'),
          ),
          Divider(
            endIndent: 20,
            indent: 20,
            height: 0.5,
            thickness: 0.5,
            color: Colors.black26,
          ),
        ],
      ),*/
      
    );
  }
}
class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
      ),
      body:GridView.count(
          crossAxisCount: 2,
          padding: EdgeInsets.all(2),
          children:List.generate(choice.length, (index) {
          return Center(
            child: SelectCard(choice: choice[index]),
        );

      })

      ),
    );
  }
}
class Choice{
  const Choice({required this.title,required this.icon});
  final String title;
  final IconData icon;
}
const List<Choice> choice = const <Choice>[
  const Choice(title: 'Home', icon: Icons.home),
  const Choice(title: 'Contact', icon: Icons.contacts),
  const Choice(title: 'Map', icon: Icons.map),
  const Choice(title: 'Phone', icon: Icons.phone),
  const Choice(title: 'Camera', icon: Icons.camera_alt),
  const Choice(title: 'Setting', icon: Icons.settings),
  const Choice(title: 'Album', icon: Icons.photo_album),
  const Choice(title: 'WiFi', icon: Icons.wifi),
  const Choice(title: 'GPS', icon: Icons.gps_fixed),
];

class SelectCard extends StatelessWidget{
  const SelectCard({Key? key, required this.choice}):super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(

      color: Colors.amber[500],
  child:InkWell(
    splashColor: Colors.blue.withAlpha(30),
      onTap: (){
      //print('select card');
        Navigator.push(context, MaterialPageRoute(builder: (context) => MyGridView()));
      },
      child: Center(child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //Expanded(child: Icon(choice.icon, size:50.0, color: Colors.black54)),
            Icon(choice.icon,size: 50),
            SizedBox(height: 10,),
            Text(choice.title, style:TextStyle(fontSize: 18),),
          ]
      ),
      )
  ) ,
        /*
        child: Center(child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              //Expanded(child: Icon(choice.icon, size:50.0, color: Colors.black54)),
              Icon(choice.icon,size: 50),
              SizedBox(height: 10,),
              Text(choice.title, style:TextStyle(fontSize: 18),),
            ]
        ),
        )*/
    );
  }
}
class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}
class _MyGridViewState extends State<MyGridView>
{
  List<String> images = [
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png",
    "https://static.javatpoint.com/tutorial/flutter/images/flutter-logo.png"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic grid'),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: GridView.builder(
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0
            ),
            itemBuilder: (BuildContext context, int index){

              //return Image.network(images[index],fit: BoxFit.fill);
              return GestureDetector(
                onTap: (){
                  setState(() {

                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyProgressBar()));

                  });
                },
                //child: Image.network(images[index],fit: BoxFit.fill,),
                child: Card(
                    elevation: 5,
                  borderOnForeground: true,
                  shadowColor: Colors.amber,
                  child: Container(

                  ),
                ),
              );

            }),


      ),
    );
  }
}
class MyProgressBar extends StatefulWidget
{
  @override
  _MyProgressBarState createState() => _MyProgressBarState();

}
class _MyProgressBarState extends State<MyProgressBar>
{
  bool _loading = false;
  double _progressValue = 0.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ProgressBar'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: _loading?
          Column(
            children: [
              LinearProgressIndicator(
                backgroundColor: Colors.cyan,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progressValue,
              ),

              SizedBox(height: 20,),
              CircularProgressIndicator(
                strokeWidth: 5,
                backgroundColor: Colors.yellow,
                valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
                value: _progressValue,
              ),
              Text('${(_progressValue * 10).round()}%')
            ],
          ):Text("Press button for downloading", style: TextStyle(fontSize: 18)),

        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            //_loading = !_loading;
            //_updateProgress();
            SnackBarPage();
          });
        },
        tooltip: 'Download',
        child: Icon(Icons.cloud_download_outlined),
      ),
    );
  }
void _updateProgress(){

    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t){
    setState(() {
      _progressValue+=0.1;
      if (_progressValue.toStringAsFixed(1) == '1.0')
        {
          _loading = false;
          _progressValue=0.0;
          t.cancel();
          return;
        }
    });
    });

}
}
class SnackBarPage extends StatelessWidget{
  @override
  final snackBar = SnackBar(content: Text('Hey! This is a SnackBar message.'),);

  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: SnackBar(
          content: Text('Hey! This is a SnackBar message.'),
          duration: Duration(seconds: 5),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        ),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

}




