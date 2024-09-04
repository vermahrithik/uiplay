import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class Ui05Page extends StatelessWidget {
  Ui05Page({super.key});

  final List<Widget> images = [
    Image.asset('images/indegenous.jpg',fit: BoxFit.cover,),
    Image.asset('images/monochrome.jpg',fit: BoxFit.cover,),
    Image.asset('images/nike.png',fit: BoxFit.cover,),
    Image.asset('images/portrait.jpg',fit: BoxFit.cover,),
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width<=600 && MediaQuery.of(context).size.width>200;
    final isTab = MediaQuery.of(context).size.width<=1100 && MediaQuery.of(context).size.width>600;
    final isWeb = MediaQuery.of(context).size.width>1100;
    return Scaffold(
      backgroundColor: const Color(0xfffffefe),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              width: 80,
              child: CarouselSlider(
                items: images,
                options: CarouselOptions(
                  // height: MediaQuery.of(context).size.height*0.2,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  onPageChanged: (index, reason) {
                    debugPrint('$index');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.goNamed(MyAppRouteConstants.ui06RouteName);
        },
        backgroundColor: Colors.blueAccent,
        elevation: 4,
        child: Icon(Icons.skip_next,color: Colors.white,),
      ),
    );
  }
}
