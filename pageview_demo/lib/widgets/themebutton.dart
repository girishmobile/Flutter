import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';
class ThemeButton extends StatelessWidget{

    String label;
    Function onClick;
    Color color;
    Color highlight;
    Widget icon;
    Color borderColor;
    Color labelColor;
    double borderWidth;
    ThemeButton({
      required this.label,
      this.labelColor = Colors.white,
      this.color = AppColors.MAIN_COLOR,
      this.highlight = AppColors.HIGHTLIGHT_DEFAULT,
      required this.icon,
      this.borderColor = Colors.transparent,
      this.borderWidth = 4,
      required this.onClick
    });
    @override
    Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child:  Material(
          color: this.color,
          child: InkWell(
            splashColor: this.highlight,
            highlightColor: this.highlight,
            onTap: (){
              this.onClick();
            },
            child:Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                    color: Color(0xFF80C038),
                    width: 2
                ),
              ),
              child: this.icon == null ?
              Text(this.label,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15,
                    color:this.borderColor,
                    fontWeight: FontWeight.bold),) :
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 this.icon,
                  SizedBox(height: 20,),
                  Text(this.label,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15,
                        color:Colors.white,
                        fontWeight: FontWeight.bold),)
                ],
              )
            ) ,
          ),
        ),
      ),
    );

  }
}