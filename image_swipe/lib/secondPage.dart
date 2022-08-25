import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class secondPage extends StatelessWidget
{
  final imageList = [
    'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246__480.jpg',
    'https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__480.jpg',
    'https://cdn.pixabay.com/photo/2017/01/03/11/33/pizza-1949183__480.jpg',
    'https://cdn.pixabay.com/photo/2017/02/03/03/54/burger-2034433__480.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(5),
          child: Swiper(

            //pagination: SwiperPagination(),
            //control: SwiperControl(color: Colors.black),
            //autoplay: true,
            // layout: SwiperLayout.STACK,
              viewportFraction: 0.7,
              scale: 0.8,
              itemCount: imageList.length,
              //itemHeight:300,
              //itemWidth: 300,
              itemBuilder: (context, index){
                return Image.network(imageList[index],fit: BoxFit.scaleDown,);
              }
          ),
        ),

      ),
    );
  }

}