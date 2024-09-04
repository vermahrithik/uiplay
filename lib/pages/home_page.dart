import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5E6C5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('home page',style: TextStyle(color: Color(0xff646B50),fontSize: 28,fontWeight: FontWeight.bold),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ui 01 page --> ',style: TextStyle(color: Color(0xff9F886F)),),
                SizedBox(height: 40,width: 40,child: IconButton(onPressed: (){context.goNamed(MyAppRouteConstants.ui01RouteName);}, style: IconButton.styleFrom(backgroundColor: Color(0xff9F886F)),icon: Icon(Icons.view_quilt_rounded,color: Colors.white,)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ui 02 page --> ',style: TextStyle(color: Color(0xffD78B30)),),
                SizedBox(height: 40,width: 40,child: IconButton(onPressed: (){context.goNamed(MyAppRouteConstants.ui02RouteName);}, style: IconButton.styleFrom(backgroundColor: Color(0xffD78B30)),icon: Icon(Icons.view_quilt_rounded,color: Colors.white,)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ui 03 page --> ',style: TextStyle(color: Color(0xff3F422E)),),
                SizedBox(height: 40,width: 40,child: IconButton(onPressed: (){context.goNamed(MyAppRouteConstants.ui03RouteName);}, style: IconButton.styleFrom(backgroundColor: Color(0xff3F422E)),icon: Icon(Icons.view_quilt_rounded,color: Colors.white,)))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('ui 04 page --> ',style: TextStyle(color: Colors.deepPurpleAccent),),
                SizedBox(height: 40,width: 40,child: IconButton(onPressed: (){context.goNamed(MyAppRouteConstants.ui04RouteName);}, style: IconButton.styleFrom(backgroundColor: Colors.deepPurpleAccent),icon: Icon(Icons.view_quilt_rounded,color: Colors.white,)))
              ],
            ),
            SizedBox(height: 40,width: 40,child: IconButton(onPressed: (){context.goNamed(MyAppRouteConstants.layoutRouteName);}, style: IconButton.styleFrom(backgroundColor: Color(0xff9F886F)),icon: Icon(Icons.account_tree,color: Colors.white,)))
          ],
        )
      ),
    );
  }
}
