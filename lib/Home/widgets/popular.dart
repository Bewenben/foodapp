import 'package:flutter/material.dart';
import 'package:foodapp/Details/grilleddetails.dart';

import '../../constants/colors.dart';
import '../../constants/popular.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({super.key});

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Text(
            "Popular Food",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 300,
          width: double.infinity,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularList.length,
              itemBuilder: (context, index) => Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: mBackgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                    color: mSecondaryColor,
                                    blurRadius: 15, // soften the shadow
                                    spreadRadius: 10, //extend the shadow
                                    offset: Offset(
                                      5.0, // Move to right 5  horizontally
                                      5.0, // Move to bottom 5 Vertically
                                    ),
                                  )
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (popularList[index].image ==
                                          popularList[0].image) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const GrilledDetails()));
                                      }
                                    });
                                  },
                                  child: Stack(
                                    children: [
                                      Image.asset(popularList[index].image,
                                          height: 225, fit: BoxFit.fill),
                                      Positioned(
                                        top: 10,
                                        right: 10,
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
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
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 8.0, left: 8.0),
                                      child: Text(
                                        popularList[index].name,
                                        style: TextStyle(fontSize: 14),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
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
                                                    blurRadius:
                                                        15.0, // soften the shadow
                                                    spreadRadius:
                                                        5.0, //extend the shadow
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
                                  padding: const EdgeInsets.only(
                                      top: 8.0, left: 8.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        popularList[index].rating,
                                        style: TextStyle(fontSize: 11),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Image.asset(
                                          popularList[index].stars,
                                          width: 50,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Text(
                                          popularList[index].reviewers,
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 6.0),
                                        child: Text(
                                          popularList[index].price,
                                          style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold),
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
                  )),
        )
      ],
    );
  }
}
