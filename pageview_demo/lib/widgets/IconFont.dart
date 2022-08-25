import 'package:flutter/material.dart';

class IconFont extends StatelessWidget {
  Color? color;
  double? size;
  String? iconName;

  IconFont({this.color, this.size, this.iconName});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      this.iconName ?? 'Demo',
      style: TextStyle(color: this.color, fontSize: this.size),
    );
  }
}
