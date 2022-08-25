import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';
import 'package:pageview_demo/models/category.dart';
import 'package:pageview_demo/models/subcategory.dart';
import 'package:pageview_demo/pages/mappage.dart';
import 'package:pageview_demo/widgets/mainappbar.dart';
import 'package:pageview_demo/widgets/themebutton.dart';

class DetailsPage extends StatefulWidget{

  int amount = 0;
  double price = 15.0;
  double cost =0.0;
  Category? subCategory;
  DetailsPage({this.subCategory});
  _DetailsPageState createState() => _DetailsPageState();
}
class _DetailsPageState extends State <DetailsPage>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image:  AssetImage('assets/fruit.jpg'),fit: BoxFit.cover
                        )
                    ),
                  ),
                  Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.7),
                                  Colors.transparent
                                ]
                            )
                        ),
                      )),
                  Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipOval(
                              child:  Icon(Icons.assignment_ind_sharp,size: 50,color: widget.subCategory!.color,),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text('Item name',style: TextStyle(fontSize: 15,color: Colors.white),),
                                SizedBox(height: 10,),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  decoration:  BoxDecoration(
                                    color: widget.subCategory!.color,
                                    borderRadius:  BorderRadius.circular(20),
                                  ),
                                  child: Text('\$500 /lb',style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                  ),),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                  Positioned(
                      right: 20,
                      top: 100,
                      child: Container(
                        padding: EdgeInsets.only(top: 5,left: 15,right: 15,bottom: 8),
                        decoration: BoxDecoration(
                            color: AppColors.MAIN_COLOR,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.5),
                                  blurRadius: 20,
                                  offset: Offset.zero
                              )
                            ]
                        ),
                        child: Row(
                          children: [
                            Text('3',style: TextStyle(fontSize: 13,color: Colors.white),),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(Icons.shopping_cart,color: Colors.white,size: 15,)
                          ],
                        ),

                      )),
                  MainAppBar(
                    theemColor: Colors.white,
                  )
                ],
              ),
            ),
            Expanded(child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,right: 20,left: 20),
                    child: Text('Selection la parter que'),
                  ),
                  Container(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:  10,
                        itemBuilder: (BuildContext context, int index){
                          return GestureDetector(
                            onTap: (){
                              //TODO change selected state each part
                            },
                            child:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.all(10),
                                  height: 150,
                                  width: 120,
                                  decoration:  BoxDecoration(
                                      borderRadius:  BorderRadius.circular(25),
                                      image: DecorationImage(
                                          image: AssetImage('assets/boy.jpg'),fit: BoxFit.cover
                                      ),
                                      boxShadow:[
                                        BoxShadow(
                                            color: Colors.black.withOpacity(0.2),
                                            offset: Offset.zero,
                                            blurRadius: 10
                                        )
                                      ]
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 25),
                                  child:  Text("Item name",style: TextStyle(color: widget.subCategory?.color ?? Colors.black,fontSize: 15),),
                                )
                              ],
                            ),
                          );
                        }
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text.rich(
                            TextSpan(
                                children: [
                                  TextSpan(text: 'Uniadd'),
                                  TextSpan(text: 'Libra',style: TextStyle(fontWeight:  FontWeight.w700)),
                                  TextSpan(text:'max 20' ,style: TextStyle(fontSize: 12))
                                ]
                            )
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 20,right: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  offset: Offset.zero,
                                  color: Colors.black.withOpacity(0.2)
                              )
                            ]
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              child:Icon(Icons.add_circle_outline,size: 40,color: AppColors.MEATS),
                              onTap: widget.amount < 10 ?(){
                                setState(() {
                                  widget.amount++;
                                  widget.cost = widget.price * widget.amount;
                                });
                              }:null,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Center(
                                  child: Text.rich(
                                      TextSpan(
                                          children: [
                                            TextSpan(text: '${widget.amount}',style: TextStyle(fontSize: 35)),
                                            TextSpan(text: 'lbs.',style: TextStyle(fontSize: 18)),
                                          ]
                                      )
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: Icon(Icons.remove_circle_outline,size: 40,color: Colors.grey,),
                              onTap: widget.amount > 0 ? (){
                                setState(() {
                                  widget.amount--;
                                  widget.cost = widget.price * widget.amount;
                                });
                              }:null,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(
                                TextSpan(
                                    children: [
                                      TextSpan(text: 'Precio'),
                                      TextSpan(text: '\$${widget.price} /lb',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ]
                                )
                            ),
                            Text('\$${widget.cost}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      )
                    ],
                  ),
                  ThemeButton(
                    label: 'Continue',
                    icon: Icon(Icons.shopping_cart,color: Colors.white,),
                    onClick: (){
                      Navigator.push(
                          context, 
                          MaterialPageRoute(builder: (context) => MapPage()));

                    },
                  ),
                  ThemeButton(
                    label: 'Location',
                    icon: Icon(Icons.location_pin,color: Colors.white,),
                    onClick: (){
                    },
                    color: AppColors.DARK_GREEN,
                    highlight: AppColors.DARKER_GREEN,
                  ),

                ],
              ),

            ))
          ],
        ),
      ),
    );
  }
}