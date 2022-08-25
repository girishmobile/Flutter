import 'package:flutter/material.dart';
import 'package:pageview_demo/OnboardingContent.dart';
import 'package:pageview_demo/Utils.dart';

class OnboardingPage extends StatefulWidget {
  _OnboarginPageState createState() => _OnboarginPageState();
}

class _OnboarginPageState extends State<OnboardingPage> {
  List<OnboardingConeten> _content = Utilis.getonboarding();
  int pageIndex = 0;
  PageController _pagecontroller = PageController();

  @override
  void initState(){

    _pagecontroller = PageController();
    super.initState();

  }
  @override
  void dispose()
  {
    super.dispose();
    _pagecontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      primary: Colors.green[400],
      minimumSize: Size(88, 36),
      padding: EdgeInsets.symmetric(horizontal: 16),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    return Scaffold(
     // appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: PageView(
                  controller: _pagecontroller,
                    onPageChanged: (int page){

                    setState(() {
                      pageIndex = page;
                    });
                    },
                    children: List.generate(
                        _content.length,
                        (index) => Container(
                              padding: EdgeInsets.all(40),
                              margin: EdgeInsets.only(
                                  left: 40, right: 40, top: 60, bottom: 20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.green.withOpacity(0.3),
                                        blurRadius: 20,
                                        offset: Offset.zero)
                                  ]),
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Column(
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Icon(
                                          Icons.ac_unit_outlined,
                                          color: Colors.green.withOpacity(0.5),
                                          size: 40,
                                        ),
                                      ),
                                      Image.asset(
                                          'assets/${_content[index].img}.png'),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text("${_content[index].message}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color:
                                                Colors.green.withOpacity(0.8),
                                            fontSize: 20,
                                          )),
                                    ],
                                  )
                                  ),
                                  Visibility(
                                    visible: index == _content.length - 1,
                                    child: ElevatedButton(
                                      style: raisedButtonStyle,
                                      onPressed: () {},
                                      child: Text('Start'),
                                  ),
                                  )
                                ],
                              ),
                            )))
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  _content.length,
                      (index) =>
                         GestureDetector(
                           onTap: (){
                             _pagecontroller.animateTo(
                                 MediaQuery.of(context).size.width * index,
                                 duration: Duration(milliseconds: 500),
                                 curve: Curves.easeInOut);
                           },
                           child:  Container(
                             height: 20,
                             width: 20,
                             margin: EdgeInsets.all(10),
                             decoration: BoxDecoration(
                                 color: Colors.green.withOpacity(0.8),
                                 borderRadius: BorderRadius.circular(50),
                                 border: Border.all(
                                     width: 6,
                                     color: pageIndex == index ? Color(0xFFC1E09E) : Theme.of(context).canvasColor
                                 )
                             ),
                           ),
                         )
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: raisedButtonStyle,
              onPressed: () {},
              child: Text('Looks like a RaisedButton'),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
