import 'dart:ui';

import 'package:pageview_demo/helpers/appcolors.dart';

class Category {
  String? name;
  String? icon;
  Color color;
  String? imgName;
  List<Category>? subCategories;

  Category(
  {
    this.name,
    this.color = AppColors.MAIN_COLOR,
    this.icon,
    this.imgName,
    this.subCategories
  }
  );
}