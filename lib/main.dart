import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfirsttutorial/product.dart';
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

List itemList = <Product>[];

class _MyState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    getProducts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            child: ProductBox(itemList[index]),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ProductRange(itemList[index])));
            },
          );
        },
        shrinkWrap: true,
        padding: EdgeInsets.all(2),
      ),
    );
  }

  void getProducts() {
    itemList.add(Product(15, "description", "name"));
    itemList.add(Product(14, "description", "name"));
    itemList.add(Product(13, "description", "name"));
    itemList.add(Product(12, "description", "name"));
    itemList.add(Product(11, "description", "name"));
    itemList.add(Product(1, "description", "name"));
    itemList.add(Product(10, "description", "name"));
    itemList.add(Product(9, "description", "name"));
    itemList.add(Product(8, "description", "name"));
  }
}

class ProductRange extends StatelessWidget {
  final Product item;

  ProductRange(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset("assets/images/lake.jpg"),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(item.name),
                  Text(item.description),
                  Text(item.price.toString()),
                  RatingBox()
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class RatingBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return RatingState();
  }
}

class RatingState extends State<RatingBox> {
  int rating = 0;
  double size = 20;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Container(
            child: IconButton(
          icon: rating >= 1
              ? Icon(
                  Icons.star_rate,
                  color: Colors.amber[700],
                  size: size,
                )
              : Icon(
                  Icons.star_rate_outlined,
                  color: Colors.amber[700],
                  size: size,
                ),
          onPressed: () => setRatingOne(),
        )),
        Container(
            child: IconButton(
          icon: rating >= 2
              ? Icon(
                  Icons.star_rate,
                  color: Colors.amber[700],
                  size: size,
                )
              : Icon(
                  Icons.star_rate_outlined,
                  color: Colors.amber[700],
                  size: size,
                ),
          onPressed: () => setRatingTwo(),
        )),
        Container(
            child: IconButton(
          icon: rating >= 3
              ? Icon(
                  Icons.star_rate,
                  color: Colors.amber[700],
                  size: size,
                )
              : Icon(
                  Icons.star_rate_outlined,
                  color: Colors.amber[700],
                  size: size,
                ),
          onPressed: () => setRatingThree(),
        )),
      ],
    );
  }

  setRatingOne() {
    setState(() {
      rating = 1;
    });
  }

  setRatingTwo() {
    setState(() {
      rating = 2;
    });
  }

  setRatingThree() {
    setState(() {
      rating = 3;
    });
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
