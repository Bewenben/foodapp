import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../constants/colors.dart';
import 'widgets/bottombar.dart';
import 'imagedetailsview.dart';

class GrilledDetails extends StatelessWidget {
  const GrilledDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [ImageDetailsView(), Bottombar()]),
    ));
  }
}
