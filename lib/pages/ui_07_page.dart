import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class Ui07Page extends StatefulWidget {
  const Ui07Page({super.key});

  @override
  State<Ui07Page> createState() => _Ui07PageState();
}

class _Ui07PageState extends State<Ui07Page> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.withOpacity(0.1),
      appBar: AppBar(backgroundColor: Colors.blueAccent.withOpacity(0.1),),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            width: 300,
            height: 100,
            child: SlideAction(
              borderRadius: 12,
              elevation: 2,
              innerColor: Colors.white,
              textColor: Colors.white,
              outerColor: Colors.indigo.withOpacity(0.5),
              sliderRotate: false,
              // alignment: Alignment.bottomCenter,
              // sliderButtonYOffset: -30,
              sliderButtonIcon: Icon(Icons.lock,color: Colors.indigo.withOpacity(0.8),),
              submittedIcon: Icon(Icons.lock_open_rounded,color: Colors.white,),
              onSubmit: (){
                context.goNamed(MyAppRouteConstants.ui08RouteName);
                return null;
              },

            ),
          ),
        )
      ),
    );
  }
}
