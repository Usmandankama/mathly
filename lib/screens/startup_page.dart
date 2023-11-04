import 'package:flutter/material.dart';
import 'package:math_game/constants.dart' as constants;
import 'package:math_game/screens/login_screen.dart';
import 'package:math_game/screens/signup_screen.dart';

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
            const SizedBox(height: 100),
            Text(
              'Mathly',
              style: TextStyle(
                fontFamily: 'Cursive',
                color: constants.primaryTextColor,
                fontSize: 50,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'The more you solve, the better you get',
              style: TextStyle(color: constants.primaryTextColor),
            ),
            const SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border:
                        Border.all(width: 2.0, color: constants.secondaryColor),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                          RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)))),
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      foregroundColor:
                          MaterialStatePropertyAll(constants.primaryTextColor),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 35),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ),
                      );
                    },
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(width: 20),
                Container(
                  decoration: BoxDecoration(
                    color: constants.secondaryColor,
                    borderRadius: BorderRadius.circular(50),
                    border:
                        Border.all(width: 2.0, color: constants.secondaryColor),
                  ),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: const MaterialStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                      ),
                      elevation: const MaterialStatePropertyAll(0),
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      foregroundColor:
                          MaterialStatePropertyAll(constants.primaryTextColor),
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                    child: const Text('Sign up'),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
