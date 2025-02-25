import 'package:flutter/material.dart';
import 'package:redditclone/features/auth/screens/login_screen.dart';
import 'package:redditclone/theme/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reddit clone',
      theme:Pallete.darkModeAppTheme,
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

