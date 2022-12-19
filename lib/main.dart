import 'package:flutter/material.dart';
import 'package:new_app/new_app.dart';
import 'package:new_app/pages/main_page.dart';
import 'package:new_app/pages/signin_page.dart';
import 'package:new_app/pages/signup_page.dart';
import 'package:new_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
      routes: {
        SplashPage.id: (context) => const SplashPage(),
        SignInPage.id: (context) => const SignInPage(),
        SignUpPage.id: (context) => const SignUpPage(),
        MainPage.id: (context) => const MainPage(),
      }
    );
  }
}
