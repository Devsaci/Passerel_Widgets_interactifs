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
  bool textButtonPressed = true;

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
        title: Text(updateAppBarText()),),
      body: Center(
        child: Column(
          children: [
            TextButton(onPressed: updateAppBar, child: Text("Je suis un text Button" ,style: TextStyle(color:textColor),))
          ],
        )
        //Text("Apprendre Les Interactives", style: TextStyle(color: textColor),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: updateColors,
        child: Icon(Icons.build),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  updateColors() {
    setState(() {
      print("Tapped : $backgroundColor");
      backgroundColor = (backgroundColor == Colors.white) ? Colors.black: Colors.white;
      textColor =(textColor == Colors.black) ? Colors.white: Colors.black;

    });
  }

  updateAppBar(){
    setState(() => textButtonPressed = !textButtonPressed);
  }

String updateAppBarText(){
return(textButtonPressed)? "Je m'y connais un peu" :"Les Interactifs";
}

}
