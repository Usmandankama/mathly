import 'package:flutter/material.dart';
import 'package:math_game/constants.dart' as constants;

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: constants.primaryTextColor,
      ),
      backgroundColor: constants.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'login',
              style: TextStyle(
                fontSize: 30,
                color: constants.primaryTextColor,
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                  ),
                  label: Text(
                    'Name',
                    style: TextStyle(
                        color: constants.primaryTextColor, fontSize: 15),
                  ),
                ),
              ),
            ),
            Container(
              decoration: const BoxDecoration(),
              child: TextField(
                decoration: InputDecoration(
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      style: BorderStyle.solid,
                    ),
                  ),
                  label: Text(
                    'Name',
                    style: TextStyle(
                      color: constants.primaryTextColor,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
