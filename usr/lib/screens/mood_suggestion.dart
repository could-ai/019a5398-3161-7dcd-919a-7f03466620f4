import 'package:flutter/material.dart';

class MoodSuggestion extends StatelessWidget {
  const MoodSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mood-Based Food Suggestion')),
      body: const Center(
        child: Text('Mood-Based Food Suggestion - Coming Soon!'),
      ),
    );
  }
}
