# couldai_user_app

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

## Supabase Setup

This project uses Supabase for backend services (authentication, database, and realtime). Follow these steps to configure Supabase:

1. Create a new project at https://app.supabase.io.
2. Copy your Supabase **URL** and **anon key** from the Project Settings > API section.
3. Open `lib/services/supabase_service.dart` and replace the placeholder values for `supabaseUrl` and `supabaseAnonKey` with your credentials.
4. Run the app. Supabase will be initialized automatically before `runApp()`.

For help getting started with Flutter development, view the  
[online documentation](https://docs.flutter.dev/), which offers tutorials,  
samples, guidance on mobile development, and a full API reference.
