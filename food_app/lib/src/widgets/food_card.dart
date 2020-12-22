import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  FoodCard({this.categoryName, this.imagePath, this.numberOfItems});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: Row(
          children: [
            Image(
              image: AssetImage(
                imagePath,
              ),
              height: 65,
              width: 65,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  categoryName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text("$numberOfItems kinds"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
