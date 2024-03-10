import 'package:blood_donate_app/DonorReceiverSelectionScreen.dart';
import 'package:blood_donate_app/detailscreen.dart';
import 'package:blood_donate_app/donationscreen.dart';
import 'package:blood_donate_app/landingscreen.dart';
import 'package:blood_donate_app/loginscreen.dart';
import 'package:blood_donate_app/signupscreen.dart';
import 'package:blood_donate_app/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blood Donation App',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[200],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.redAccent,
          ),
        ),
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Colors.redAccent,
          brightness: Brightness.light,
        ).copyWith(
            secondary: Colors.redAccent,
            primary: Colors.black), // Set primary to black
      ),
      initialRoute: '/splash', // Set initial route to splash
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/': (context) => const LandingScreen(),
        '/donation': (context) => const DonationScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/login': (context) => const LoginScreen(),
        '/donor_receiver_selection': (context) =>
            const DonorReceiverSelectionScreen(),
        '/display_details': (context) => const DisplayDetailsScreen(),
      },
    );
  }
}
