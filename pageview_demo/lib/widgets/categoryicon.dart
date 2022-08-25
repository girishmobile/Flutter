import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';

class CategoryIcon extends StatelessWidget
{
  Color color;
  String iconName;
  double size;
  CategoryIcon({this.color = AppColors.MAIN_COLOR,this.iconName = "iconName",this.size = 30});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ClipOval(
          child: Container(
            color: this.color,
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.ac_unit_sharp,
              color: Colors.white,
              size: this.size,
            ),
          ),
    );
  }

}