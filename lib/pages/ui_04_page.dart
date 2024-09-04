import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class Ui04Page extends StatelessWidget {
  Ui04Page({super.key});

  final List<String> categories = [
    'All',
    'Smartphones',
    'Laptops',
    'Tablets',
    'Cameras',
    'Men’s Clothing',
    'Women’s Clothing',
    'Footwear',
    'Accessories',
    'Furniture',
    'Home Decor',
    'Kitchen Appliances',
    'Cookware',
    'Skincare',
    'Haircare',
    'Makeup',
    'Fragrances',
    'Vitamins & Supplements',
    'Fitness Equipment',
    'Health Monitoring Devices',
    'Personal Hygiene Products',
    'Action Figures',
    'Board Games',
    'Educational Toys',
    'Puzzles',
    'Fiction Books',
    'Non-Fiction Books',
    'Notebooks',
    'Writing Instruments',
    'Sportswear',
    'Outdoor Gear',
    'Camping Equipment',
    'All',
    'Smartphones',
    'Laptops',
    'Tablets',
    'Cameras',
    'Men’s Clothing',
    'Women’s Clothing',
    'Footwear',
    'Accessories',
    'Furniture',
    'Home Decor',
    'Kitchen Appliances',
    'Cookware',
    'Skincare',
    'Haircare',
    'Makeup',
    'Fragrances',
    'Vitamins & Supplements',
    'Fitness Equipment',
    'Health Monitoring Devices',
    'Personal Hygiene Products',
    'Action Figures',
    'Board Games',
    'Educational Toys',
    'Puzzles',
    'Fiction Books',
    'Non-Fiction Books',
    'Notebooks',
    'Writing Instruments',
    'Sportswear',
    'Outdoor Gear',
    'Camping Equipment'
  ];


  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width<=600 && MediaQuery.of(context).size.width>200;
    final isTab = MediaQuery.of(context).size.width<=1100 && MediaQuery.of(context).size.width>600;
    final isWeb = MediaQuery.of(context).size.width>1100;
    return Scaffold(
      backgroundColor: const Color(0xfffffefe),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 700,
                width: double.maxFinite,
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 2,
                  itemCount: 12,
                  itemBuilder: (context, index) {
                    return Container(child: Center(child: Text('$index',style: const TextStyle(fontSize: 38,color: Colors.white),),),color: Colors.black,);
                  },
                ),
              ),
              SizedBox(
                height: 700,
                width: double.maxFinite,
                child: GridView.custom(
                  gridDelegate: SliverWovenGridDelegate.count(
                    crossAxisCount: 3,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    pattern: [
                      const WovenGridTile(1),
                      const WovenGridTile(2),
                      const WovenGridTile(
                        5,
                        crossAxisRatio: 0.7,
                        alignment: AlignmentDirectional.centerEnd,
                      ),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index) => Container(child: Center(child: Text('$index',style: const TextStyle(fontSize: 38,color: Colors.white),),),color: Colors.black,),
                    childCount:6
                  ),
                ),
              ),
              SizedBox(
                height: 700,
                width: double.maxFinite,
                child: GridView.custom(
                  gridDelegate: SliverStairedGridDelegate(
                    crossAxisSpacing: 48,
                    mainAxisSpacing: 24,
                    startCrossAxisDirectionReversed: false,
                    pattern: [
                      const StairedGridTile(0.2, 2.5),
                      const StairedGridTile(0.3, 2),
                      const StairedGridTile(0.4, 1.5),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                    (context, index){
                      return Container(
                        color: Colors.blue,
                        child:Center(
                          child: Text(
                            '$index',
                            style: const TextStyle(
                              fontSize: 38,
                              color: Colors.white
                            ),
                          )
                        )
                      );
                    },
                    childCount: 6
                  ),
                ),
              ),
              SizedBox(
                height: 700,
                width: double.maxFinite,
                child: GridView.custom(
                  gridDelegate: SliverQuiltedGridDelegate(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    repeatPattern: QuiltedGridRepeatPattern.inverted,
                    pattern: [
                      const QuiltedGridTile(1, 1),
                      const QuiltedGridTile(1, 1),
                      const QuiltedGridTile(2, 2),
                      const QuiltedGridTile(2, 2),
                    ],
                  ),
                  childrenDelegate: SliverChildBuilderDelegate(
                        (context, index) => Container(child: Center(child: Text('$index',style: const TextStyle(fontSize: 38,color: Colors.white),)),color: Colors.blueGrey,),
                    childCount: 6
                  ),
                ),
              ),
              SizedBox(
                height: 700,
                width: double.maxFinite,
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: [
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 2,
                      child: Container(color: Colors.black,child: const Center(child: Text('abc',style: TextStyle(fontSize: 38,color: Colors.white),)),),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: 1,
                      child: Container(color: Colors.grey,child: const Center(child: Text('abc',style: TextStyle(fontSize: 38,color: Colors.white),)),),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Container(color: Colors.red,child: const Center(child: Text('abc',style: TextStyle(fontSize: 38,color: Colors.white),)),),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 1,
                      mainAxisCellCount: 1,
                      child: Container(color: Colors.blueGrey,child: const Center(child: Text('abc',style: TextStyle(fontSize: 38,color: Colors.white),)),),
                    ),
                    StaggeredGridTile.count(
                      crossAxisCellCount: 4,
                      mainAxisCellCount: 2,
                      child: Container(color: Colors.orangeAccent,child: const Text('abc'),),
                    ),
                  ],
                ),
              ),
              SizedBox(
                // color: Colors.transparent,
                width: double.maxFinite,
                height: 400,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: isWeb?8:isTab?4:isMobile?2:1),
                  itemCount: categories.length,
                  itemBuilder: (context, index){
                    return Container(
                      // height: isMobile?100:50,
                      // width: isMobile?100:50,
                      color: Color.fromARGB(100, index*32, index*24, index*16),
                      child: Center(child: Text(categories[index],style: const TextStyle(color: Colors.brown,fontWeight: FontWeight.bold),)),
                    );
                  },
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
