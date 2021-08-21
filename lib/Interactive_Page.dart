import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InteractifPage extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {
  //   return InteractifPageStat();

  InteractifPageState createState() => InteractifPageState();
}

class InteractifPageState extends State<InteractifPage> {
  Color backgroundColor = Colors.white;
  Color textColor = Colors.black;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //Tout ce que l'on va faire pendant l'initialistion du Widget
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    //Tout ce que l'on va faire quand le widget sera  dispose.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Les Interactif'),
      ),
      body: Center(
        child: Text("Apprendre Les Interactives", style: TextStyle(color: textColor),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            backgroundColor = (backgroundColor == Colors.white) ? Colors.black: Colors.white;
            textColor =(textColor == Colors.black) ? Colors.white: Colors.black;
          });
          print("Tapped : $backgroundColor");
        },
        child: Icon(Icons.build),
      ),
    );
  }
}
