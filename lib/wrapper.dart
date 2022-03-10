import 'package:flutter/material.dart';
import 'package:task1_majoo_bootcamp/portrait_view.dart';

import 'landscape_view.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth <= 480) {
        return const PortraitView();
      } else {
        return const LandscapeView();
      }
    });
  }
}
