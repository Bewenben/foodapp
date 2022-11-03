import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../constants/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(
                  bottom: 1,
                ),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: mSecondaryColor,
                  width: 1.0,
                ))),
                child: Text(
                  "Details",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 130.0),
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 1,
                  ),
                  child: Text(
                    "Review",
                    style: TextStyle(
                      fontSize: 24,
                      color: mHintColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              "If you are hungry for success, food content marketing could be the answer, food puns are as irresistable as mom's apple pie. There's no denying that good food-related content has the potential to draw in the crowds if you're hungry for success, food content marketing could be the answer, food pun could be the answer.",
              maxLines: 9,
            ),
          )
        ],
      ),
    );
  }
}
