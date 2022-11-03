import 'package:flutter/material.dart';
import 'package:foodapp/Details/widgets/bottombar.dart';
import 'package:foodapp/Details/widgets/details.dart';
import 'package:foodapp/Home/home.dart';

import '../constants/colors.dart';
import 'widgets/addtobag.dart';

class ImageDetailsView extends StatelessWidget {
  const ImageDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650,
      width: 800,
      child: Stack(
        children: [
          Stack(
            children: [
              SizedBox(
                  width: double.infinity,
                  child: Image.asset("assets/images/Grilled-Salmon.jpg",
                      height: 300, fit: BoxFit.cover)),
              Positioned(
                bottom: 80,
                right: 35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      color: mBackgroundColor,
                      child: IconButton(
                        color: mSecondaryColor,
                        icon: Icon(Icons.favorite),
                        onPressed: () {},
                      )),
                ),
              ),
              Positioned(
                top: 30,
                left: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      color: mBackgroundColor,
                      child: IconButton(
                        color: mPrimaryColor,
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: (() => Navigator.pop(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()))),
                      )),
                ),
              ),
              Positioned(
                top: 30,
                right: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      color: mBackgroundColor,
                      child: IconButton(
                        color: mPrimaryColor,
                        icon: Icon(Icons.local_mall),
                        onPressed: () {},
                      )),
                ),
              ),
              Positioned(
                top: 60,
                right: 10,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                      height: 25,
                      width: 25,
                      decoration:
                          BoxDecoration(color: mBackgroundColor, boxShadow: [
                        BoxShadow(
                          color: mSecondaryColor,
                          spreadRadius: 10,
                          blurRadius: 7,
                          offset: const Offset(5, 5),
                        ),
                      ]),
                      child: Center(
                          child: Text(
                        "2",
                        style: TextStyle(color: mSecondaryColor),
                      ))),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: -30,
            left: 20,
            right: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                  height: 450,
                  color: mBackgroundColor,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 125.0, top: 8.0),
                            child: Image.asset(
                              "assets/icons/dots.png",
                              width: 100,
                            ),
                          ),
                          Padding(
                              padding:
                                  const EdgeInsets.only(left: 60, top: 8.0),
                              child: IconButton(
                                color: mSecondaryColor,
                                icon: Icon(Icons.near_me),
                                onPressed: () {},
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Grilled Salmon",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110.0),
                                  child: Text(
                                    "\$ 96.00",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  "by ",
                                  style: TextStyle(fontSize: 14),
                                ),
                                Text(
                                  "pizza hut",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Addtobag(),
                            Details(),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
