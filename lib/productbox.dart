import 'package:flutter/material.dart';

class ProductBox extends StatelessWidget {
  final String description, name;
  final int price;

  ProductBox(this.price, this.description, this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/lake.jpg"),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(name),
                    Text(description),
                    Text('Price is '+price.toString()),
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
