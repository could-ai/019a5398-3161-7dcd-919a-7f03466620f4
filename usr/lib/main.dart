import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'services/supabase_service.dart';
import 'screens/splash_screen.dart';
import 'screens/home_page.dart';
import 'screens/sugar_oil_guide.dart';
import 'screens/food_analyzer.dart';
import 'screens/mood_suggestion.dart';
import 'screens/expiry_tracker.dart';
import 'screens/hygiene_notifications.dart';
import 'screens/custom_alarms.dart';
import 'screens/xp_progress.dart';
import 'screens/water_tracker.dart';
import 'screens/sleep_tracker.dart';
import 'screens/diet_recommendation.dart';
import 'screens/bmi_history.dart';
import 'screens/seasonal_tips.dart';
import 'screens/reminders_page.dart';
import 'screens/symptom_detector.dart';
import 'screens/motivational_quotes.dart';
import 'screens/emergency_info.dart';
import 'screens/settings_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SupabaseService.initialize();
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
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'InstagramRound',
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
        '/': (_) => const SplashScreen(),
        '/home': (_) => const HomePage(),
        '/sugar_oil': (_) => const SugarOilGuide(),
        '/food_analyzer': (_) => const FoodAnalyzer(),
        '/mood_suggestions': (_) => const MoodSuggestion(),
        '/expiry_tracker': (_) => const ExpiryTracker(),
        '/hygiene_notifications': (_) => const HygieneNotifications(),
        '/custom_alarms': (_) => const CustomAlarms(),
        '/xp_progress': (_) => const XPProgress(),
        '/water_tracker': (_) => const WaterTracker(),
        '/sleep_tracker': (_) => const SleepTracker(),
        '/diet_recommendation': (_) => const DietRecommendation(),
        '/bmi_history': (_) => const BMIHistory(),
        '/seasonal_tips': (_) => const SeasonalTips(),
        '/reminders': (_) => const RemindersPage(),
        '/symptom_detector': (_) => const SymptomDetector(),
        '/motivational_quotes': (_) => const MotivationalQuotes(),
        '/emergency_info': (_) => const EmergencyInfo(),
        '/settings': (_) => const SettingsPage(),
      },
    );
  }
}
