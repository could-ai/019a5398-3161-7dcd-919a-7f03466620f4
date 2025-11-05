import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<String> featureNames = [
    'Sugar & Oil Guide',
    'Food Analyzer',
    'Mood Foods',
    'Expiry Tracker',
    'Hygiene Reminders',
    'Custom Alarms',
    'Water Tracker',
    'Sleep Tracker',
    'BMI & History',
  ];

  final List<String> featureRoutes = [
    '/sugar_oil',
    '/food_analyzer',
    '/mood_suggestions',
    '/expiry_tracker',
    '/hygiene_notifications',
    '/custom_alarms',
    '/water_tracker',
    '/sleep_tracker',
    '/bmi_history',
  ];

  void _onFeatureTap(int index) {
    Navigator.pushNamed(context, featureRoutes[index]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Hello, User'),
                Text('Streak: 5 days', style: TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: 60,
                  height: 60,
                  child: CircularProgressIndicator(
                    value: 0.7,
                    strokeWidth: 6,
                    color: const Color(0xFF4A90E2),
                    backgroundColor: Colors.grey.shade200,
                  ),
                ),
                const Text('700 XP'),
              ],
            ),
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          itemCount: featureNames.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => _onFeatureTap(index),
              borderRadius: BorderRadius.circular(16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 4,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Center(
                  child: Text(
                    featureNames[index],
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 12),
                  ),
                ),
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        selectedItemColor: const Color(0xFF4A90E2),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.show_chart), label: 'XP'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.help_outline), label: 'Help'),
        ],
      ),
    );
  }
}
