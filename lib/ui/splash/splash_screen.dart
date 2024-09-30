import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a long-running task, such as initializing services or fetching data.
    // Use a Future.delayed to wait for a few seconds then navigate to the main screen.
    Timer(
      const Duration(seconds: 3), // Adjust as necessary
      () => context.go("/login") 
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Adjust background color as needed
      body: Center(
        child: Image.asset('assets/images/splash.png'), // Your splash screen image
      ),
    );
  }
}

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }