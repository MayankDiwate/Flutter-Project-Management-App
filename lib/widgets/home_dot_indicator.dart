import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeDotIndicator extends StatelessWidget {
  const HomeDotIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DotsIndicator(
        dotsCount: 3,
        decorator: const DotsDecorator(
          size: Size(8, 8),
          activeSize: Size(8, 8),
          activeColor: Colors.white,
        ),
      ),
    );
  }
}
