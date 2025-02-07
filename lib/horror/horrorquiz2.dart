//taxiwala

import 'package:flutter/material.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

class Horrorquiz2 extends StatefulWidget {
  const Horrorquiz2({super.key});

  @override
  State<Horrorquiz2> createState() => _Horrorquiz2State();
}

class _Horrorquiz2State extends State<Horrorquiz2> {
  final CountDownController _timerController = CountDownController();
  bool isAnswered = false;
  bool isTimeUp = false;
  int selectedAnswer = -1;
  int currentQuestionIndex = 0;

  List<Map<String, dynamic>> questions = [
    {
      "question": "Who plays the lead role in Taxiwala?",
      "options": [
        "A) Vijay Deverakonda",
        "B) Nani",
        "C) Sai Dharam Tej",
        "D) Ram Pothineni"
      ],
      "correctAnswerIndex": 0
    },
    {
      "question": "Who directed  Taxiwala?",
      "options": [
        "A) Dill Raju",
        "B) Rahul Sankrityan",
        "C) G. Nageswara Reddy",
        "D) Vi Anand"
      ],
      "correctAnswerIndex": 1
    },
    {
      "question": "Who is the female Taxiwala in movie ?",
      "options": [
        "A) Rashmika Mandanna ",
        "B) Priyanka Jawalkar",
        "C) Varasha Bollamma",
        "D) Shruti Haasan"
      ],
      "correctAnswerIndex": 1
    },
    {
      "question": "Who composed the music for Taxiwala?",
      "options": [
        "A) Thaman S ",
        "B) Jakes Bejoy",
        "C) Shekar Chandra",
        "D) DSP"
      ],
      "correctAnswerIndex": 1
    },
    {
      "question":
          "What is the name of the character played by Vijay Deverakonda in Taxiwala?",
      "options": ["A) Raji", "B) Vijay", "C) Sai", "D) Shiva"],
      "correctAnswerIndex": 3
    },
  ];

  void checkAnswer(int index) {
    if (!isAnswered) {
      setState(() {
        isAnswered = true;
        selectedAnswer = index;
      });
      _timerController.pause();
    }
  }

  void nextQuestion() {
    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        isAnswered = false;
        isTimeUp = false;
        selectedAnswer = -1;
      });
      _timerController.restart();
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    var question = questions[currentQuestionIndex];
    var options = question["options"];
    int correctAnswerIndex = question["correctAnswerIndex"];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("You're in Premium Quiz",
                style: TextStyle(color: Colors.grey, fontSize: 18)),
            Row(
              children: [
                Text(
                  "Question ${currentQuestionIndex + 1} / ${questions.length}",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.lightbulb, color: Colors.amber),
                      SizedBox(width: 2),
                      Text("10 X",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Icon(Icons.monetization_on, color: Colors.yellow),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 36, 34, 34),
              ),
              child: Column(
                children: [
                  Center(
                    child: CircularCountDownTimer(
                      duration: 16,
                      initialDuration: 0,
                      controller: _timerController,
                      width: 80,
                      height: 100,
                      ringColor: Colors.grey[300]!,
                      fillColor: isAnswered
                          ? (selectedAnswer == correctAnswerIndex
                              ? Colors.green
                              : Colors.red)
                          : Colors.green,
                      backgroundColor: Colors.white,
                      strokeWidth: 8,
                      textStyle: const TextStyle(
                        fontSize: 30,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      isReverse: true,
                      onComplete: () {
                        setState(() {
                          isTimeUp = true;
                          isAnswered = true;
                        });
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.share,
                              color: Colors.white, size: 20),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.flag_outlined,
                              color: Colors.white, size: 19),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    question["question"],
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  const SizedBox(height: 35),
                  Column(
                    children: List.generate(options.length, (index) {
                      bool isSelected = selectedAnswer == index;
                      bool isCorrect = index == correctAnswerIndex;

                      return GestureDetector(
                        onTap: isAnswered ? null : () => checkAnswer(index),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          padding: const EdgeInsets.all(12),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: isAnswered
                                ? (isCorrect
                                    ? Colors.green
                                    : (isSelected
                                        ? Colors.red
                                        : Colors.grey[800]))
                                : Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                options[index],
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: isAnswered
                                      ? Colors.white
                                      : Colors.black87,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Icon(
                                isAnswered
                                    ? (isCorrect
                                        ? Icons.check_circle
                                        : (isSelected
                                            ? Icons.cancel
                                            : Icons.radio_button_unchecked))
                                    : Icons.radio_button_unchecked,
                                color: isAnswered
                                    ? (isCorrect ? Colors.white : Colors.red)
                                    : Colors.black54,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.power_settings_new_outlined,
                      color: Colors.white, size: 35),
                ),
                const Text("Quit Quiz",
                    style: TextStyle(color: Colors.white, fontSize: 23)),
                const Spacer(),
                ElevatedButton(
                  onPressed: isAnswered ? nextQuestion : null,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 2),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  child: const Text(
                    "Next",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
