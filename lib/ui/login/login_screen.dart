import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture/route/routes.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  
  @override
  State<StatefulWidget> createState()  => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Controllers to capture input from TextFields
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controllers when the widget is disposed
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  // Function to handle login button press
  void _handleLogin() {
    final username = _usernameController.text;
    final password = _passwordController.text;

    if (username.isNotEmpty && password.isNotEmpty) {
      // Perform login logic (e.g., API call, validation, etc.)
      // Navigate back to home screen or any other screen
      context.go(AppRouter.dashboardScreen); // Adjust your route based on your GoRouter setup
    } else {
      // Show an error if fields are empty
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter both username and password')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Username TextField
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0), // Spacing between text fields
            
            // Password TextField
            TextField(
              controller: _passwordController,
              obscureText: true, // Hide password input
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24.0), // Spacing before button
            
            // Login Button
            ElevatedButton(
              onPressed: _handleLogin,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}