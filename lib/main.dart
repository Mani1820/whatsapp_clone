import 'package:clone_whatsapp/Screens/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

final theme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
    color: const Color(0xFF128217),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
