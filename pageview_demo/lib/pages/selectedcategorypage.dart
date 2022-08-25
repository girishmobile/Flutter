import 'package:flutter/material.dart';
import 'package:pageview_demo/models/category.dart';
import 'package:pageview_demo/pages/detailspage.dart';
import 'package:pageview_demo/widgets/categoryicon.dart';
import 'package:pageview_demo/widgets/mainappbar.dart';

class SelectedCategoryPage extends StatelessWidget {

  Category selectedCategory;
  SelectedCategoryPage({required this.selectedCategory});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: MainAppBar(),
        body: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CategoryIcon(
                    color: this.selectedCategory.color,
                    iconName: this.selectedCategory.icon ?? 'iconname',
                    size: 30,
                  ),
                  Text(
                    this.selectedCategory.name ?? 'categoryName',
                    style: TextStyle(
                      color: this.selectedCategory.color,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    children: List.generate(
                        this.selectedCategory.subCategories!.length, (index) {

                      return GestureDetector(
                        onTap: () {
                          //TODO navigate to detail page
                            var subcat = this.selectedCategory.subCategories![index];

                            Navigator.push(context, MaterialPageRoute(builder:(context) => DetailsPage(subCategory: this.selectedCategory.subCategories![index],)
                            ));
                          print('data = $subcat');


                        },
                        child: Container(
                          child: Column(
                            children: [
                              ClipOval(
                                child: Image.asset(
                                  'assets/images1.jpg',
                                  fit: BoxFit.cover,
                                  height: 100,
                                  width: 100,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                this.selectedCategory.subCategories![index].name ?? 'noname',
                                style: TextStyle(
                                  color: this.selectedCategory.color,
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    })),
              )
            ],
          ),
        ));
  }
}
