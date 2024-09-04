import 'package:flutter/material.dart';

class Ui08Page extends StatefulWidget {
  const Ui08Page({super.key});

  @override
  State<Ui08Page> createState() => _Ui08PageState();
}

class _Ui08PageState extends State<Ui08Page> {
  final List myTiles = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n'];

  void updateMyTiles(int oldIndex,int newIndex){
    setState(() {

      if(oldIndex<newIndex){
        newIndex--;
      }

      final tile = myTiles.removeAt(oldIndex);

      myTiles.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.withOpacity(0.1),
      appBar: AppBar(backgroundColor: Colors.deepPurpleAccent.withOpacity(0.5),),
      body: ReorderableListView(
        children: [
          for(final tile in myTiles)
            ListTile(
              tileColor: Colors.deepPurpleAccent.withOpacity(0.3),
              selectedTileColor: Colors.deepPurpleAccent.withOpacity(0.1),
              selectedColor: Colors.red,
              textColor: Colors.white,
              key: ValueKey(tile),
              title: Text(tile,textAlign: TextAlign.center),
            )
        ],
        onReorder: (oldIndex, newIndex) => updateMyTiles(oldIndex,newIndex),
      )
    );
  }
}
