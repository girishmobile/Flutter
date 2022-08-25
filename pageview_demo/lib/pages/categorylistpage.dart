import 'package:flutter/material.dart';
import 'package:pageview_demo/helpers/appcolors.dart';
import 'package:pageview_demo/helpers/utils.dart';
import 'package:pageview_demo/models/category.dart';
import 'package:pageview_demo/pages/selectedcategorypage.dart';
import 'package:pageview_demo/widgets/categorybottombar.dart';
import 'package:pageview_demo/widgets/categorycard.dart';
import 'package:pageview_demo/widgets/categoryicon.dart';
import 'package:pageview_demo/widgets/mainappbar.dart';

class CategoryListPage extends StatefulWidget {
  _CategoryListPageState createState() => _CategoryListPageState();
}
class _CategoryListPageState extends State<CategoryListPage> {
  List<Category> categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(),
        appBar: MainAppBar(),
        body: Container(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text(
                      'selection category',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                        padding: EdgeInsets.only(bottom: 100),
                    itemCount: categories.length,
                    itemBuilder: (BuildContext ctx, int index) {
                      return CategoryCard(category: categories[index],
                        onCardClick:(){
                          //TODO: navigate to the another page
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => SelectedCategoryPage(
                                selectedCategory: categories[index],))
                            );
                        }
                      );
                    },
                  ))
                ],
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CategoryBottomBar(),
              )
            ],
          ),
        ));
  }
}
