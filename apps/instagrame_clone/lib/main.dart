import 'package:flutter/material.dart';
import 'package:instagrame_clone/providers.dart';
import 'package:instagrame_clone/theme.dart';
import 'package:instagrame_clone/widgets/navigation_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => NavigationProvider()),
      ],
      child: MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeStyle.monThemeClair,
      home: NavigationScreen(),
    );
  }
}
