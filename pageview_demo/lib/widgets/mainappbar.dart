import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget{

  Color theemColor;
  bool showProfilepic;

  MainAppBar({
    this.theemColor = AppColors.MAIN_COLOR,
    this.showProfilepic = true
  });

  @override
  MainAppBarState createState() => MainAppBarState();

  @override
  Size get preferredSize => new Size.fromHeight(80);

}
class MainAppBarState extends State<MainAppBar>
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  AppBar(
      title: Icon(
        Icons.home_outlined,
        size: 40,
        color: widget.theemColor,
      ),
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      iconTheme: IconThemeData(color: widget.theemColor),
      actions: [
        Opacity(
          opacity:widget.showProfilepic ? 1: 0,
            child:(
                Container(
                  margin: EdgeInsets.only(right: 10),
                  padding: EdgeInsets.all(10),
                  child: ClipOval(
                    child: Image.asset('assets/boy.jpg'),
                  ),
                )
            )

        )

      ],
    );
  }
}