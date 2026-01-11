import 'package:facebook_clone/constants.dart';
import 'package:facebook_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Styles.couleurPrimaire),
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
