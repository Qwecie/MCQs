import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Question {
  final String question;
  final List<String> options;
  final int correctAnswerIndex;

  Question({required this.question, required this.options, required this.correctAnswerIndex});
}

class MyApp extends StatelessWidget {
  final List<Question> allQuestions = [
    Question(
      question: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'Which planet is known as the "Red Planet"?',
      options: ['Venus', 'Mars', 'Jupiter', 'Saturn'],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'What is the largest mammal?',
      options: ['Elephant', 'Giraffe', 'Blue Whale', 'Lion'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'What is the smallest prime number?',
      options: ['0', '1', '2', '3'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'Which gas do plants primarily take in from the air?',
      options: ['Oxygen', 'Carbon Dioxide', 'Nitrogen', 'Hydrogen'],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'What is the capital of France?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'What is the capital of Germany?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of Spain?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'What is the capital of Italy?',
      options: ['Berlin', 'Madrid', 'Paris', 'Rome'],
      correctAnswerIndex: 3,
    ),
// Add more questions in the same format
    Question(
      question: 'What is the capital of Australia?',
      options: ['Canberra', 'Sydney', 'Melbourne', 'Brisbane'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of Brazil?',
      options: ['São Paulo', 'Rio de Janeiro', 'Brasília', 'Salvador'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'What is the capital of Canada?',
      options: ['Toronto', 'Vancouver', 'Ottawa', 'Montreal'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'What is the capital of China?',
      options: ['Beijing', 'Shanghai', 'Guangzhou', 'Hong Kong'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of Egypt?',
      options: ['Cairo', 'Alexandria', 'Giza', 'Luxor'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of India?',
      options: ['Mumbai', 'Delhi', 'Kolkata', 'Bangalore'],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'What is the capital of Japan?',
      options: ['Tokyo', 'Osaka', 'Kyoto', 'Hiroshima'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of Mexico?',
      options: ['Mexico City', 'Guadalajara', 'Monterrey', 'Tijuana'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of Russia?',
      options: ['Moscow', 'Saint Petersburg', 'Kazan', 'Sochi'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of South Africa?',
      options: ['Cape Town', 'Johannesburg', 'Pretoria', 'Durban'],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'What is the capital of Turkey?',
      options: ['Istanbul', 'Ankara', 'Izmir', 'Antalya'],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'What is the capital of United Kingdom?',
      options: ['London', 'Manchester', 'Edinburgh', 'Birmingham'],
      correctAnswerIndex: 0,
    ),
    Question(
      question: 'What is the capital of United States?',
      options: ['New York City', 'Los Angeles', 'Washington, D.C.', 'Chicago'],
      correctAnswerIndex: 2,
    ),

    // Add more questions here
  ];

  List<Question> generateRandomQuestionsSubset(List<Question> allQuestions, int count) {
    List<Question> shuffledQuestions = List.from(allQuestions)..shuffle();
    return shuffledQuestions.sublist(0, count);
  }

  @override
  Widget build(BuildContext context) {
    List<Question> randomQuestions = generateRandomQuestionsSubset(allQuestions, 10);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MCQ App',
      home: QuizPage(questions: randomQuestions),
    );
  }
}

class QuizPage extends StatefulWidget {
  final List<Question> questions;

  QuizPage({required this.questions});

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentQuestionIndex = 0;
  int score = 0;

  void checkAnswer(int selectedOptionIndex) {
    if (selectedOptionIndex == widget.questions[currentQuestionIndex].correctAnswerIndex) {
      setState(() {
        score++;
      });
    }

    if (currentQuestionIndex < widget.questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      // Show score dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Congratulations', style: TextStyle(fontWeight: FontWeight.bold),),
            content: Row(
              children: [
                Text('Your score: ', style: TextStyle(fontStyle: FontStyle.italic),),
                Text(' $score / ${widget.questions.length}', style: TextStyle(fontWeight: FontWeight.bold),)
              
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    currentQuestionIndex = 0;
                    score = 0;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black
                ),
                child: const Text('Try Again', style: TextStyle(color: Colors.white),),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('MCQ Quiz App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),

            const Center(child: Icon(Icons.quiz, size: 200, color: Colors.orange,)),

            const SizedBox(height: 25,),

            const Text('Plug!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),),


            const SizedBox(height: 25,),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    'Question ${currentQuestionIndex + 1}/${widget.questions.length}',
                    style: const TextStyle(fontSize: 25, color: Colors.black),
                  ),
                ),
              ],
            ),

            const Divider(
              color: CupertinoColors.systemGrey3,
              height: 10.0,
              thickness: 1,
            ),
            const SizedBox(height: 16),
            Text(
              widget.questions[currentQuestionIndex].question,
              style: const TextStyle(fontSize: 18, color: Colors.black),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Column(
              children: widget.questions[currentQuestionIndex].options.map((option) {
                int optionIndex = widget.questions[currentQuestionIndex].options.indexOf(option);
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        checkAnswer(optionIndex);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green
                      ),
                      child: Text(option),
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

