import 'package:flutter/material.dart';
import 'package:foodapp/constants/category.dart';
import 'package:foodapp/constants/colors.dart';

class Category extends StatelessWidget {
  const Category({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: SizedBox(
          height: 100,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categoryList.length,
            itemBuilder: ((context, index) => Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: mSecondaryColor,
                                      spreadRadius: 1,
                                      blurRadius: 10,
                                      offset: const Offset(0, 4),
                                    ),
                                  ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(categoryList[index].image),
                                )),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text(categoryList[index].name, style: const TextStyle(fontSize: 11),),
                          ),
                        ],
                      )),
                )),
          )),
    );
  }
}
