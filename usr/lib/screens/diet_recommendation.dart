import 'package:flutter/material.dart';

class DietRecommendation extends StatelessWidget {
  const DietRecommendation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Diet Recommendation')),
      body: const Center(
        child: Text('Diet Recommendation (Goal-Based) - Coming Soon!'),
      ),
    );
  }
}
