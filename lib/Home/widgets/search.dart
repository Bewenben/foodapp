import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 340,
          child: TextFormField(
            decoration: InputDecoration(
              prefixIcon: IconButton(
                icon: Icon(
                  Icons.search,
                  color: mSecondaryColor,
                ),
                onPressed: () {},
              ),
              hintText: "Find a food or Restaurant",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: mHintColor, width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: mSecondaryColor, width: 1.0),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  Icons.filter_list,
                  color: mSecondaryColor,
                ),
                onPressed: (() {}),
              ),
              hintStyle: TextStyle(color: mHintColor),
            ),
          ),
        )
      ],
    );
  }
}
