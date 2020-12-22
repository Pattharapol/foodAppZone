import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String id;
  final String name;
  final String imagePath;
  final double price;
  final String category;
  final double discount;
  final double ratings;

  BoughtFoods({
    this.id,
    this.name,
    this.imagePath,
    this.price,
    this.category,
    this.discount,
    this.ratings,
  });

  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {
  List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 340,
            child: Image.asset(
              widget.imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: Container(
              height: 60,
              width: 340,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black, Colors.black12],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            bottom: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold)),
                    Row(
                      children: [
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16),
                        Icon(Icons.star,
                            color: Theme.of(context).primaryColor, size: 16),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "(" + widget.ratings.toString() + "Reviews)",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(widget.price.toString(),
                        style: TextStyle(
                            color: Colors.orangeAccent,
                            fontWeight: FontWeight.bold)),
                    Text(
                      "Min order",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
