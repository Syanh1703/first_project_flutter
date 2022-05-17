import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(AssignmentOne());
}

class AssignmentOne extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AssignmentOneState();
  }
}

class _AssignmentOneState extends State<AssignmentOne>{
  String isTapped = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Sy Anh's first app"),
          backgroundColor: Colors.amberAccent,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton( disabledColor: Colors.red,
                onPressed: (){
                setState(() {
                  isTapped = "The Raised button is tapped";
                });
              }, textColor: Colors.black,
                color: Colors.greenAccent,
              child: Text('Change Name Button'),),
              Text(isTapped, textScaleFactor: 1.5,)
            ],
          ),
        ),
      ),
    );
  }
}