import 'package:flutter/material.dart';
import 'package:pageview_demo/pages/OnboardingPage.dart';
import 'package:pageview_demo/pages/categorylistpage.dart';
import 'package:pageview_demo/widgets/IconFont.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Color(0xFF80C038),
      minimumSize: Size(120, 42),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
    );
    // TODO: implement build
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset(
                    'assets/wall_1.jpeg',
                    fit: BoxFit.cover,
                  ),
                )
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                 Center(
                   child:  ClipOval(
                     child: Container(
                         width: 180,
                         height: 180,
                         color: Color(0xFF80C038),
                         alignment: Alignment.center,
                         child: Icon(Icons.ac_unit_outlined,color: Colors.white,size: 130,
                         )
                     ),
                   ),
                 ),
                  SizedBox(
                    height: 50,
                  ),
                  Text('Welcome', textAlign: TextAlign.center, style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold
                  )
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text('Product list\welcome to home',textAlign: TextAlign.center,style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: raisedButtonStyle,
                        onPressed: (){},
                        child: Text('LOGIN')),
                  ),
                 Container(
                   margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(50),
                     child:  Material(
                       color: Colors.transparent,
                       child: InkWell(
                         splashColor: Color(0xFF80C038).withOpacity(0.2),
                         highlightColor: Color(0xFF80C038).withOpacity(0.2),
                         onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CategoryListPage()));
                         },
                         child:Container(
                           padding: EdgeInsets.all(15),
                           child: Text('Start',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                                 fontSize: 16,
                                 color: Color(0xFF80C038),
                                 fontWeight: FontWeight.bold
                           ),),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             border: Border.all(
                                 color: Color(0xFF80C038),
                                 width: 2
                             ),
                           ),
                         ) ,
                       ),
                     ),
                   ),
                 )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
