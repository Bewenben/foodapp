import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/colors.dart';

class Bestfood extends StatelessWidget {
  const Bestfood({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Best Food",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                color: mBackgroundColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Image.asset("assets/images/greensalad.jpg",
                            height: 250, fit: BoxFit.cover),
                        Positioned(
                          top: 10,
                          right: 10,
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
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                          child: Text(
                            "Green Salad",
                            style: TextStyle(fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 204.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                                width: 30,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: mBackgroundColor,
                                    boxShadow: [
                                      BoxShadow(
                                        color: mSecondaryColor,
                                        blurRadius: 15.0, // soften the shadow
                                        spreadRadius: 5.0, //extend the shadow
                                        offset: Offset(
                                          5.0, // Move to right 5  horizontally
                                          5.0, // Move to bottom 5 Vertically
                                        ),
                                      )
                                    ]),
                                child: IconButton(
                                  color: mSecondaryColor,
                                  icon: Icon(Icons.near_me),
                                  iconSize: 20,
                                  onPressed: () {},
                                )),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "4.9",
                            style: TextStyle(fontSize: 11),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Image.asset(
                              "assets/images/stars.png",
                              width: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              "(200)",
                              style: TextStyle(fontSize: 11),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 175),
                            child: Text(
                              "\$ 40.0",
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
