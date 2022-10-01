import 'package:flutter/material.dart';
import 'package:tutee_app/screens/log_in_screen.dart';

void main() {
  runApp(const TuteeApp());
}

class TuteeApp extends StatelessWidget {
  const TuteeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 138, 105, 197),
      ),
      home: const LogInScreen(),
    );
  }
}
