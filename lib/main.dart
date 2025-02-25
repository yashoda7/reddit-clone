import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:redditclone/features/auth/screens/login_screen.dart';
import 'package:redditclone/firebase_options.dart';
import 'package:redditclone/theme/pallete.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
 WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: FirebaseOptions.currentPlatform();
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
  //  runApp(ProviderScope(child:  const MyApp()));
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

