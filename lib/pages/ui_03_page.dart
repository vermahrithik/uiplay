import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class Ui03Page extends StatelessWidget {
  Ui03Page({super.key});

  TextEditingController searchController = TextEditingController();
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
    'Camping Equipment'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffefe),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // height: 40,
                color: Colors.transparent,
                width: double.maxFinite,
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Nike Collections',
                        style: TextStyle(
                            color: Color(0xff3d3b48),
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 34)),
                    Text('the best of nike,all in one place',
                        style: TextStyle(
                            color: Color(0xffcacace),
                            fontFamily: 'roboto',
                            fontSize: 14))
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.75,
                    color: Colors.white54,
                    child: TextField(
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.w400,
                      ),
                      cursorColor: Colors.grey.shade500,
                      controller: searchController,
                      onChanged: (String searchController) {
                        debugPrint(searchController);
                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 14.0),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: const BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                        fillColor: const Color(0xfff9fafc),
                        filled: true,
                        hintText: 'Search Product',
                        hintStyle: TextStyle(
                          color: Colors.grey.shade800.withOpacity(0.8),
                        ),
                        prefixIcon: GestureDetector(
                          onTap: () {},
                          child: const SizedBox(
                              child: Icon(
                                Icons.search,
                                size: 22,
                              )),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                          backgroundColor: const Color(0xfff9fafc),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      icon: const Icon(Icons.equalizer),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 35,
                width: double.maxFinite,
                color: Colors.transparent,
                child: ListView.builder(
                    controller: ScrollController(
                        initialScrollOffset: 0, keepScrollOffset: true),
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: SizedBox(
                            height: 10,
                            child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  foregroundColor: Colors.transparent,
                                  backgroundColor: index == 0
                                      ? const Color(0xffed783a)
                                      : const Color(0xfffffefe),
                                ),
                                child: Text(
                                  categories[index],
                                  style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: index == 0
                                          ? const Color(0xfffffefe)
                                          : const Color(0xffc8c8cb),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ))),
                      );
                    }),
              ),
              const SizedBox(height: 16),
              Container(
                height: MediaQuery.of(context).size.height * 0.65,
                width: MediaQuery.of(context).size.width * 0.85,
                child: ListView.builder(
                  itemCount: 10,
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 0),
                  itemBuilder: (BuildContext context, index) {
                    return GestureDetector(
                      onTap: (){
                        context.goNamed(MyAppRouteConstants.detailsRouteName,pathParameters: {'index':index.toString()});
                      },
                      child: Container(
                        height: 200,
                        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
                        width: MediaQuery.of(context).size.width * 0.85,
                        decoration: BoxDecoration(
                            color: index % 2 == 0
                                ? const Color(0xffffecec)
                                : const Color(0xffEDF1F4),
                            borderRadius: BorderRadius.circular(30)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: const Color(0xfff7d4d5).withOpacity(0.0),
                              ),
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  Transform.rotate(
                                    angle: -0.25,
                                    child: Container(
                                      height: 100,
                                      width: 90,
                                      decoration: BoxDecoration(
                                          color: index % 2 == 0
                                              ? const Color(0xfff7d4d5)
                                              : const Color(0xffDAE4E6),
                                          borderRadius:
                                          BorderRadius.circular(12)),
                                    ),
                                  ),
                                  Transform.translate(
                                    offset: const Offset(5, -15),
                                    child: Transform.scale(
                                      scale: 1.7,
                                      child: Transform.rotate(
                                        angle: 0.3,
                                        child: Image.asset(
                                          'images/nike.png',
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Transform.translate(
                                      offset: const Offset(-65, -75),
                                      child: const CircleAvatar(
                                          backgroundColor: Color(0xfffefaff),
                                          radius: 15,
                                          child: Icon(
                                            CupertinoIcons.heart_fill,
                                            size: 16,
                                            color: Color(0xffed783a),
                                          )
                                      )
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 180,
                              width: MediaQuery.of(context).size.width * 0.4,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: const Color(0xfff7d4d5).withOpacity(0.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 8),
                                child: Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Nike Air Pegasus',
                                      style: TextStyle(
                                          fontFamily: 'roboto',
                                          color: Color(0xff453e60),
                                          fontSize: 18),
                                    ),
                                    const Text(
                                      'By Nike',
                                      style: TextStyle(
                                          fontFamily: 'roboto',
                                          color: Color(0xffb5b2b9),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w100),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    const Text(
                                      'Lorem ipsum dolor sit amet, elit.',
                                      style: TextStyle(
                                          fontFamily: 'roboto',
                                          color: Color(0xffb5b2b9),
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            children: [
                                              const TextSpan(
                                                text: '\$100.',
                                                style: TextStyle(
                                                  color: Color(0xff54474e),
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 18,
                                                ),
                                              ),
                                              WidgetSpan(
                                                child: Transform.translate(
                                                    offset: const Offset(-1, 4),
                                                    child: const Text('00',
                                                        textScaler:
                                                        TextScaler.linear(
                                                            0.6),
                                                        style: TextStyle(
                                                            fontWeight:
                                                            FontWeight.w400,
                                                            color:
                                                            Color(0xff54474e),
                                                            fontSize: 25))),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                            height: 30,
                                            child: ElevatedButton(
                                                onPressed: () {},
                                                style: ElevatedButton.styleFrom(
                                                  elevation: 2,
                                                  backgroundColor:
                                                  const Color(0xff453e60),
                                                ),
                                                child: const Text(
                                                  'Buy',
                                                  style: TextStyle(
                                                      overflow:
                                                      TextOverflow.ellipsis,
                                                      color: Color(0xffb1accc),
                                                      fontSize: 16,
                                                      fontWeight:
                                                      FontWeight.bold),
                                                )))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.goNamed(MyAppRouteConstants.ui04RouteName);
        },
        backgroundColor: Colors.blueAccent,
        elevation: 4,
        child: Icon(Icons.skip_next,color: Colors.white,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home,color: Color(0xffed783a),),label: ""),
          const BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.device_phone_landscape,color: Color(0xffb7b4bd),),label: ""),
          const BottomNavigationBarItem(icon: Icon(CupertinoIcons.star_fill,color: Color(0xffb7b4bd),),label: ""),
          const BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_fill,color: Color(0xffb7b4bd),),label: ""),
        ],
      ),
    );
  }
}
