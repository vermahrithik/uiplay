import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uiplay/routing/app_route_constants.dart';

class Ui06Page extends StatefulWidget {
  const Ui06Page({super.key});

  @override
  State<Ui06Page> createState() => _Ui06PageState();
}

class _Ui06PageState extends State<Ui06Page> {
  final _controller = ConfettiController();
  bool isPlaying = false;

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Scaffold(
          backgroundColor: Colors.green.withOpacity(0.1),
          appBar: AppBar(backgroundColor: Colors.blueAccent.withOpacity(0.1),),
          body: Center(
            child: MaterialButton(
              onPressed: () {
                if (isPlaying) {
                  _controller.stop();
                } else {
                  _controller.play();
                }
                isPlaying = !isPlaying;
              },
              child: Text(
                'Party Time',
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurpleAccent,
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              context.goNamed(MyAppRouteConstants.ui07RouteName);
            },
            backgroundColor: Colors.blueAccent,
            elevation: 4,
            child: Icon(Icons.skip_next,color: Colors.white,),
          ),
        ),
        Container(
            height: 10,
            width: 10,
            color: Colors.deepPurpleAccent,
            child: ConfettiWidget(
              confettiController: _controller,
              blastDirection: -pi / 2,
              // strokeWidth: 1,
              blastDirectionality: BlastDirectionality.explosive,
              // displayTarget: true,
              emissionFrequency: 0.05,
              numberOfParticles: 50,
              particleDrag: 0.05,
              colors: [Colors.orange,Colors.white,Colors.green,Colors.indigo],
              shouldLoop: true,
              gravity: 0.05,
              // minimumSize: Size(0.1, 0.9),
            ))
      ],
    );
  }
}
