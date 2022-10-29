import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "What would you like to eat?",
                style: TextStyle(color: mPrimaryColor, fontSize: 18),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(left: 57.5),
            child: IconButton(
              icon: Image.asset(
                'assets/icons/bell.png',
                width: 24,
              ),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
