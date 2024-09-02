import 'package:flutter/material.dart';

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (BuildContext context,BoxConstraints constraints){
        return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: constraints.maxWidth>600?7:3),
            itemCount: 30,
            itemBuilder: (context,index){
              return Center(
                child: Container(
                  color: Colors.blue,
                  padding: const EdgeInsets.all(0),// color of grid items
                  child: Center(
                    child: Text(
                      '$index',
                      style: const TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                ),
              );
            }
        );
      }
      ),
    );
  }
}
