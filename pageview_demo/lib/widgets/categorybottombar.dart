import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';

class CategoryBottomBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(0.2),
              offset: Offset.zero,
            ),
          ]
      ),
      height: 88,
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ClipOval(
            child: Material(
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.favorite,color: AppColors.MAIN_COLOR,)),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.shopping_cart,color: AppColors.MAIN_COLOR,)),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.pin_drop,color: AppColors.MAIN_COLOR,)),
            ),
          ),
          ClipOval(
            child: Material(
              child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.settings,color: AppColors.MAIN_COLOR,)),
            ),
          ),
        ],
      ),
    );
  }
}