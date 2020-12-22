import 'package:flutter/material.dart';
import 'package:food_app/src/widgets/food_card.dart';

//Data
import '../data/category_data.dart';

//Model
import '../models/category_model.dart';

class FoodCategory extends StatelessWidget {
  FoodCategory({Key key}) : super(key: key);

  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {
    // ใช้ ListView.builder เพื่อใช้ itemcount
    // ระบุจำนวน List.length ที่มาจาก category_data ได้
    return Container(
      height: 80,
      child: ListView.builder(
        // ทำให้สามารถ เลื่อนไปข้างๆได้
        scrollDirection: Axis.horizontal,

        // ระบุจำนวนที่จะสร้างจาก List.length
        itemCount: _categories.length,

        //ทำการสร้าง ListView โดยใช้ Card
        itemBuilder: (BuildContext context, int index) {
          // ผ่านค่าเข้าไปให้ไป FoodCard
          return FoodCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}
