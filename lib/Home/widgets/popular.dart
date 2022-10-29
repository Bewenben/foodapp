import 'package:flutter/material.dart';

import '../../constants/popular.dart';

class PopularFood extends StatefulWidget {
  const PopularFood({super.key});

  @override
  State<PopularFood> createState() => _PopularFoodState();
}

class _PopularFoodState extends State<PopularFood> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 150,
      child: Column(
        children: const [
          Padding(
            padding: EdgeInsets.only(top:8.0),
            child: Text(
              "Popular Food", style: TextStyle(fontSize: 24),),
          ),
        // SizedBox(
        //   height: 300,
        //   width: double.infinity,
        //   child: ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: popularList.length,
        //     itemBuilder: (context, index) => Row(
        //       children: [
        //         Image.asset(popularList[index].image,),
        //       ],
        //     ) ),
        // )
        ],
      ),
    );
  }
}