import 'package:flutter/material.dart';

class InteractifPage extends StatefulWidget {
  @override
  // State<StatefulWidget> createState() {
  //   return InteractifPageStat();

  InteractifPageState createState() => InteractifPageState();
}

class InteractifPageState extends State<InteractifPage> {

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
      appBar: AppBar(
        title: Text('Les Interactif'),
      ),
      body: Center(
        child: Text("Apprendre Les Interactives"),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
              print("Tapped");
            },
        child: Icon(Icons.build),
      ),
    );
  }
}
