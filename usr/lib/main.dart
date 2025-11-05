import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const ShinCareApp());
}

class ShinCareApp extends StatelessWidget {
  const ShinCareApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShinCare Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4A90E2),
        // Scaffold background color for a clean, minimalist look
        scaffoldBackgroundColor: Colors.white,
        // Instagram-style round font
        fontFamily: 'InstagramRound',
        // Define color scheme to replace deprecated accentColor
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF4A90E2),
          secondary: Colors.white,
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          },
        ),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Color(0xFF4A90E2)),
          titleTextStyle: TextStyle(
            color: Color(0xFF4A90E2),
            fontSize: 20,
            fontFamily: 'InstagramRound',
          ),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
