import 'package:flutter/material.dart';
import 'package:flutterfirsttutorial/productbox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyState();
  }
}

class _MyState extends State<MyHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home'),),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(2),
        children: <Widget>[
          ProductBox(15, "description", "name"),
          ProductBox(14, "description", "name"),
          ProductBox(13, "description", "name"),
          ProductBox(12, "description", "name"),
          ProductBox(11, "description", "name"),
          ProductBox(1, "description", "name"),
          ProductBox(10, "description", "name"),
          ProductBox(9, "description", "name"),
          ProductBox(8, "description", "name"),
        ],
      ),
    );
  }

}

/*
class MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/lake.jpg", height: 200, width: 200,),
            Expanded(
                child: Container(
              padding: EdgeInsets.all(5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Name'),
                  Text('Price'),
                  Text('Product'),
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
*/
