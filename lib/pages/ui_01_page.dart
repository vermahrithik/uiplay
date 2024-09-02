import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class Ui01Page extends StatelessWidget {
  Ui01Page({super.key});

  final List<String> features = ['Lorem', 'ipsum', 'dolor', 'sit', 'amet', 'consectetur', 'adipiscing', 'elit', 'Nunc', 'rhoncus', 'purus', 'id', 'ligula', 'accumsan', 'pulvinar','Praesent', 'euismod','iaculis','pellentesque','Ut'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff101110),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Lorem Ipsum',style: TextStyle(fontSize: 42,color: Colors.white),),
            const SizedBox(height: 100,),
            Container(
              height: 35,
              width: double.maxFinite,
              color: Colors.transparent,
              child:
                ListView.builder(
                  controller: ScrollController(initialScrollOffset: 50,keepScrollOffset: true),
                  itemCount: features.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(height: 10,width:100,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: (index+1)%2==0?const Color(0xff62a795):const Color(0xff2c2c2c),),child: Text(features[index],style: const TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xffd6d7d7),fontSize: 16,fontWeight: FontWeight.bold),))),
                    );
                  }
                ),
            ),
            const SizedBox(height: 8,),
            Container(
              height: 35,
              width: double.maxFinite,
              color: Colors.transparent,
              child:
                ListView.builder(
                  controller: ScrollController(initialScrollOffset: 80,keepScrollOffset: true),
                  itemCount: features.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(height: 10,width:100,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: (index+1)%3==0?const Color(0xff40498c):const Color(0xff2c2c2c)),child: Text(features[index],style: const TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xffd6d7d7),fontSize: 16,fontWeight: FontWeight.bold),))),
                    );
                  }
                ),
            ),
            const SizedBox(height: 8,),
            Container(
              height: 35,
              width: double.maxFinite,
              color: Colors.transparent,
              child:
                ListView.builder(
                  controller: ScrollController(initialScrollOffset: 110,keepScrollOffset: true),
                  itemCount: features.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(height: 10,width:100,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: (index+1)%4==0?const Color(0xffe9ba5b):const Color(0xff2c2c2c)),child: Text(features[index],style: const TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xffd6d7d7),fontSize: 16,fontWeight: FontWeight.bold),))),
                    );
                  }
                ),
            ),
            const SizedBox(height: 8,),
            Container(
              height: 35,
              width: double.maxFinite,
              color: Colors.transparent,
              child:
                ListView.builder(
                  controller: ScrollController(initialScrollOffset: 140,keepScrollOffset: true),
                  itemCount: features.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(height: 10,width:100,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: (index+1)%5==0?const Color(0xffa0e686):const Color(0xff2c2c2c)),child: Text(features[index],style: const TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xffd6d7d7),fontSize: 16,fontWeight: FontWeight.bold),))),
                    );
                  }
                ),
            ),
            const SizedBox(height: 8,),
            Container(
              height: 35,
              width: double.maxFinite,
              color: Colors.transparent,
              child:
                ListView.builder(
                  controller: ScrollController(initialScrollOffset: 170,keepScrollOffset: true),
                  itemCount: features.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(height: 10,width:100,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: (index+1)%6==0?const Color(0xff6b9fca):const Color(0xff2c2c2c)),child: Text(features[index],style: const TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xffd6d7d7),fontSize: 16,fontWeight: FontWeight.bold),))),
                    );
                  }
                ),
            ),
            const SizedBox(height: 8,),
            Container(
              height: 35,
              width: double.maxFinite,
              color: Colors.transparent,
              child:
                ListView.builder(
                  controller: ScrollController(initialScrollOffset: 200,keepScrollOffset: true),
                  itemCount: features.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: SizedBox(height: 10,width:100,child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: (index+1)%7==0?const Color(0xffee9858):const Color(0xff2c2c2c)),child: Text(features[index],style: const TextStyle(overflow: TextOverflow.ellipsis,color: Color(0xffd6d7d7),fontSize: 16,fontWeight: FontWeight.bold),))),
                    );
                  }
                ),
            ),
            const SizedBox(height: 16,),
            SizedBox(
              height: 60,
              width:120,
              child: ElevatedButton(
                onPressed: (){
                  context.goNamed(MyAppRouteConstants.ui02RouteName);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffee9858)
                ),
                child: const Text(
                  'UI 02 ↵',
                  style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Color(0xffd6d7d7),
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff101110),
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(icon: const Icon(Icons.perm_identity_rounded,color: Colors.white,),tooltip: 'profile',label: 'profile',backgroundColor: Colors.green,activeIcon: Icon(Icons.account_circle,color: Colors.grey.shade500,)),
          BottomNavigationBarItem(icon: const Icon(Icons.home_outlined,color: Colors.white,),tooltip: 'home',label: 'home',backgroundColor: Colors.green,activeIcon: Icon(Icons.home,color: Colors.grey.shade500,))
        ],
      ),
    );
  }
}
