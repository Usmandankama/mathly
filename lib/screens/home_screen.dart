import 'package:flutter/material.dart';
import 'package:math_game/constants.dart' as constants;
import 'package:math_game/screens/questions_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String difficulty ="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      appBar: AppBar(
        foregroundColor: constants.primaryTextColor,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                difficulty = 'easy';
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(difficulty: difficulty),
                  ),
                );
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                        style: BorderStyle.solid, color: Colors.green),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'EASY',
                    style: TextStyle(
                      color: constants.primaryTextColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
                onTap: () {
                difficulty = 'medium';
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(difficulty: difficulty),
                  ),
                );
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: const Color.fromARGB(255, 253, 139, 9),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'MEDIUM',
                    style: TextStyle(
                      color: constants.primaryTextColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            GestureDetector(
                onTap: () {
                difficulty = 'hard';
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(difficulty: difficulty),
                  ),
                );
              },
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                    border:
                        Border.all(style: BorderStyle.solid, color: Colors.red),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    'HARD',
                    style: TextStyle(
                      color: constants.primaryTextColor,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
