import 'package:flutter/material.dart';
import 'package:food_app/src/pages/favorite_page.dart';
import 'package:food_app/src/pages/order_page.dart';
import 'package:food_app/src/pages/profile_page.dart';
import 'package:food_app/src/scoped-model/food_model.dart';

// Pages
import '../pages/home_page.dart';

class MainScreen extends StatefulWidget {
  final FoodModel foodModel;

  MainScreen({this.foodModel});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;

  List<Widget> pages;
  Widget currentPage;

  HomePage homePage;
  Order orderPage;
  FavoritePage favoritePage;
  ProfilePage profilePage;

  @override
  void initState() {
    super.initState();
    currentPage = homePage;

    //call the fetch method on food_model.dart
    widget.foodModel.fetchFood();

    orderPage = Order();
    homePage = HomePage();
    favoritePage = FavoritePage();
    profilePage = ProfilePage();

    pages = [homePage, orderPage, favoritePage, profilePage];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentPage = pages[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            title: Text('Orders'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite,
            ),
            title: Text('Favorite'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text('Profile'),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}
