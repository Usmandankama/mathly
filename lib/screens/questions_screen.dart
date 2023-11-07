import 'dart:math';

import 'package:flutter/material.dart';
import 'package:math_game/constants.dart' as constants;

class QuestionScreen extends StatefulWidget {
  final String difficulty;
  const QuestionScreen({super.key, required this.difficulty});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  late int numberA;
  late int numberB;
  var answer;
  int points = 0;
  late String operatorToUse;
  late int answerFieldDeterminer;

  @override
  void initState() {
    super.initState();
    randomNumberGenerator();
  }

  var randomNumber = Random();

  List<String> operrators = ['+', '-', '*', '/'];

  void randomNumberGenerator() {
    var randomNumber = Random();
    answerFieldDeterminer = randomNumber.nextInt(3);
    operatorToUse = operrators[answerFieldDeterminer];

    if (widget.difficulty == 'easy') {
      setState(() {
        numberA = randomNumber.nextInt(10);
        numberB = randomNumber.nextInt(10);
      });
    } else if (widget.difficulty == 'medium') {
      numberA = randomNumber.nextInt(100);
      numberB = randomNumber.nextInt(100);
    } else if (widget.difficulty == 'hard') {
      numberA = randomNumber.nextInt(350);
      numberB = randomNumber.nextInt(350);
    }
    setState(() {
      switch (operatorToUse) {
        case '+':
          answer = numberA + numberB;
          break;
        case '-':
          answer = numberA - numberB;
          break;
        case '*':
          answer = numberA * numberB;
          break;
        case '/':
          answer = numberA / numberB;
          break;
        default:
      }
    });
  }

  void checkAnswer() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: constants.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Text(
                  '${points}pts',
                  style: TextStyle(
                    fontSize: 30,
                    color: points < 0 ? Colors.red : constants.primaryTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                '$numberA $operatorToUse $numberB',
                style: TextStyle(
                  fontSize: 40,
                  color: constants.primaryTextColor,
                ),
              ),
              const SizedBox(height: 50),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (answerFieldDeterminer == 0) {
                        setState(() {
                          points += 5;
                          randomNumberGenerator();
                        });
                      } else {
                        points -= 2;
                        randomNumberGenerator();
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 108, 63),
                          style: BorderStyle.solid,
                        ),
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Text(
                          answerFieldDeterminer == 0
                              ? '$answer'
                              : '${widget.difficulty == 'easy' ? randomNumber.nextInt(50) : randomNumber.nextInt(500)}',
                          style: TextStyle(
                              color: constants.primaryTextColor, fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      if (answerFieldDeterminer == 1) {
                        setState(() {
                          points += 5;
                          randomNumberGenerator();
                        });
                      } else {
                        points -= 2;
                        randomNumberGenerator();
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.cyan,
                          style: BorderStyle.solid,
                        ),
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Text(
                          answerFieldDeterminer == 1
                              ? '$answer'
                              : '${randomNumber.nextInt(500)}',
                          style: TextStyle(
                              color: constants.primaryTextColor, fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (answerFieldDeterminer == 2) {
                        setState(() {
                          points += 5;
                          randomNumberGenerator();
                        });
                      } else {
                        points -= 2;
                        randomNumberGenerator();
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 255, 17, 0),
                          style: BorderStyle.solid,
                        ),
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Text(
                          answerFieldDeterminer == 2
                              ? '$answer'
                              : '${randomNumber.nextInt(500)}',
                          style: TextStyle(
                              color: constants.primaryTextColor, fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  GestureDetector(
                    onTap: () {
                      if (answerFieldDeterminer == 3) {
                        setState(() {
                          points += 5;
                          randomNumberGenerator();
                        });
                      } else {
                        points -= 2;
                        randomNumberGenerator();
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.yellow,
                          style: BorderStyle.solid,
                        ),
                      ),
                      height: 150,
                      width: 150,
                      child: Center(
                        child: Text(
                          answerFieldDeterminer == 3
                              ? '$answer'
                              : '${randomNumber.nextInt(500)}',
                          style: TextStyle(
                              color: constants.primaryTextColor, fontSize: 40),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
