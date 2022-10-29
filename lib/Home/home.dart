import 'package:flutter/material.dart';
import 'package:foodapp/Home/widgets/category.dart';
import 'package:foodapp/Home/widgets/popular.dart';
import 'package:foodapp/Home/widgets/search.dart';

import '../constants/colors.dart';
import 'widgets/appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: mPrimaryColor,
          selectedItemColor: mSecondaryColor,
          backgroundColor: mBackgroundColor,
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.radar),
              label: 'Near By',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_mall),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
            ),
          ],
        ),
        // appBar: topAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [Appbar(), Searchbar(), Category(), PopularFood()]),
          ),
        ));
  }
}
