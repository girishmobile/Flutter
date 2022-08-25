import 'dart:ui';

import 'package:pageview_demo/helpers/appcolors.dart';
import 'package:pageview_demo/models/category.dart';
class SubCategory extends Category{
  SubCategory({
    String name = 'abc',
    String icon = 'def',
    Color color = AppColors.MAIN_COLOR,
    String imageName = 'imageName'
  }):super(
    name:  name,
    icon: icon,
    color: color,
    imgName:  imageName
  );
}