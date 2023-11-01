import 'package:flutter/material.dart';
import 'package:math_game/constants.dart' as constants;
import 'package:math_game/screens/home_screen.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({super.key});

  @override
  State<StartupPage> createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Mathly',
              style: TextStyle(
                fontFamily: 'Cursive',
                color: constants.primaryTextColor,
                fontSize: 50,
              ),
            ),
            Text(
              'The more you solve, the better you get',
              style: TextStyle(color: constants.primaryTextColor),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(width: 2.0, color: constants.secondaryColor),
                ),
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: const MaterialStatePropertyAll(
                      LinearBorder(),
                    ),
                    elevation: const MaterialStatePropertyAll(0),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.transparent),
                    foregroundColor:
                        MaterialStatePropertyAll(constants.primaryTextColor),
                    padding: const MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 70),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text('Proceed'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
