import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bottombar extends StatelessWidget {
  const Bottombar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0),
      child: Row(
        children: [
          Column(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.watch_later,
                    color: Color.fromARGB(255, 2, 121, 219),
                  )),
              Text("12 am - 3 pm")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.my_location,
                      color: Color.fromARGB(255, 2, 219, 49),
                    )),
                Text("3.5 km")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.local_library,
                      color: Color.fromARGB(255, 219, 2, 2),
                    )),
                Text("Map View")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: Column(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.delivery_dining,
                      color: Color.fromARGB(255, 136, 5, 5),
                    )),
                Text("Delivery")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
