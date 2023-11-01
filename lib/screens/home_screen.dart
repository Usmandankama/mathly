import 'package:flutter/material.dart';
import 'package:math_game/constants.dart' as constants;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      appBar: AppBar(
        foregroundColor: constants.primaryTextColor,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        
      ),
    );
  }
}