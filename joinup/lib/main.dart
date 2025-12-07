import 'package:flutter/material.dart';
import 'widgets/bottom_nav.dart';

void main() {
  runApp(JoinUpApp());
}

class JoinUpApp extends StatelessWidget {
  const JoinUpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "JoinUp",
      theme: ThemeData.dark(),
      home: BottomNav(),
    );
  }
}
