import 'package:flutter/material.dart';
import 'package:leanstram/customColors.dart';
class schoolPage extends StatefulWidget{
  _schoolselectState createState() => _schoolselectState();
}
class _schoolselectState extends State<schoolPage>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(color: Color(0xFF0098c2)),
                child: ConstrainedBox(
                  constraints: constraints.copyWith(
                    minHeight: constraints.maxHeight,
                    maxHeight: double.infinity,
                  ),
                  child: IntrinsicHeight(
                    child: SafeArea(
                      child: Column(
                        children: [
                          Column(
                            children: <Widget>[
                              ...List<Widget>.generate(
                                  10,
                                      (index) => ListTile(
                                    title: Text(
                                      "$index",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    leading: Icon(
                                      Icons.person,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    onTap: () => Navigator.pop(context),
                                  )),
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.settings),
                                    title: Text('Facebook'),
                                    onTap: () => Navigator.pop(context),
                                  ),
                                  ListTile(
                                    leading: Icon(Icons.help),
                                    title: Text('Instagram'),
                                    onTap: () => Navigator.pop(context),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      body: Container(),
    );
    return Scaffold(
      //MediaQuery.of(context).size.height * 0.3,
      body: CustomScrollView(
        slivers:<Widget> [
          SliverAppBar(
            automaticallyImplyLeading: false,
           // expandedHeight: 123,// MediaQuery.of(context).size.height * 0.3,
            collapsedHeight: 64,
            expandedHeight: 159 + MediaQuery.of(context).viewPadding.top,
            elevation: 0,
            titleSpacing: 0,
            centerTitle: false,
            pinned: false,
            floating: true,
            leading: IconButton(
              onPressed: (){
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            backgroundColor: customColors.colorButton,
             flexibleSpace: FlexibleSpaceBar(
               background: Container(
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                      image: NetworkImage("https://picsum.photos/500/500"),fit: BoxFit.fill
                      //image: AssetImage("images/top_header.png"),alignment: Alignment.topCenter
                    )
                 ),
               ),
             ),
          ),
        ],
      ),
    );
  }
}