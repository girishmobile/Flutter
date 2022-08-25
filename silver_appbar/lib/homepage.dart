import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';


class homePage extends StatefulWidget{
  @override
  _homepageState createState() => _homepageState();
}
class _homepageState extends State<homePage>
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
          appBar: AppBar(

          ),
      body: Column(
        children: <Widget>[
          Container(
           // child: FadeInImage.assetNetwork(placeholder: 'images/loading.gif', image: 'https://picsum.photos/250?image=9'),
            child:CachedNetworkImage(
              imageUrl: "http://via.placeholder.com/350x150",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Icon(Icons.error),
             ),
          ),
          SizedBox(height: 30),
          Container(

              child: CachedNetworkImage(
                imageUrl: "http://via.placeholder.com/350x150",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
          )

        ],
      ),
    );
  }
}
class homePageRoute extends CupertinoPageRoute{

  homePageRoute()
      : super(builder: (BuildContext context) => new homePage());
  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
   // return new FadeTransition(opacity: animation, child: new homePage());
    return new RotationTransition(
        turns: animation,
        child: new ScaleTransition(
          scale: animation,
          child: new FadeTransition(
            opacity: animation,
            child: new homePage(),
          ),
        ));
  }

}
