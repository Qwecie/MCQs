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
  question: 'What is Engineering Mechanics?',
  options: ['Study of bodies under motion without considering forces',
            'Application of mechanics to issues involving common engineering aspects',
            'Study of bodies only under rest',
            ' Study of bodies only under motion'],
  correctAnswerIndex: 1,
  ),
  Question(
  question: ' What is Mechanics?',
  options: ['Branch of science which deals with failure analysis',
            'Branch of science which deals with conditions of rest or motion of bodies',
            'Branch of science which deals with the study of bodies only under rest',
            'Branch of science which deals with the study of bodies only under motion'],
  correctAnswerIndex: 1,
  ),
  Question(
  question: 'Which of the following is a branch of mechanics?',
  options: ['Statics and kinetics', 'Statics and dynamics', 'Kinematics and dynamics', 'Kinetics and kinematics'],
  correctAnswerIndex: 1,
  ),
  Question(
  question: 'Which of the following is the basic law for mechanics?',
  options: ['Newton’s law of viscosity', 'Parallelogram law', 'Newton’s laws of motion', 'Hooke’s law'],
  correctAnswerIndex: 2,
  ),
  Question(
  question: 'Which of the following is termed as an action of pull or push of a body at rest or motion?',
  options: ['Torque', 'Momentum', 'Work', 'Force'],
  correctAnswerIndex: 3,
  ),
  Question(
  question: 'Which of the following is the condition for the three-force theorem in mechanics?',
  options: ['The force system should be in equilibrium only',
            'The force systems should be non-coplanar',
            'The system should be co-planar, parallel',
            'The force system should be in equilibrium, co-planar, concurrent, or parallel'],
  correctAnswerIndex: 3,
  ),
  Question(
  question: 'Which of the following is the SI unit of force?',
  options: ['Kg m', 'Kg m^2', 'Kg m^2/s', 'Kg m/s^2'],
  correctAnswerIndex: 3,
  ),
  Question(
  question: 'According to which of the following laws of mechanics a body remains/continue in its state of rest or motion until it is disturbed by an external agent?',
  options: ['Newton’s first law of motion', 'Newton’s second law of motion', 'Newton’s third law of motion', 'Superposition law'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the unit of power?',
  options: ['Joule', 'Newton', 'Watt', 'Pascal'],
  correctAnswerIndex: 2,
  ),
  Question(
  question: "Newton's first law of motion states that:",
  options: [
  "An object at rest will remain at rest unless acted upon by an unbalanced force",
  "The acceleration of an object is directly proportional to the net force acting on it and inversely proportional to its mass",
  "For every action, there is an equal and opposite reaction",
  "The sum of all forces acting on an object is zero"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"Newton's second law of motion states that:",
  options:[
  "An object at rest will remain at rest unless acted upon by an unbalanced force",
  "The acceleration of an object is directly proportional to the net force acting on it and inversely proportional to its mass",
  "For every action, there is an equal and opposite reaction",
  "The sum of all forces acting on an object is zero"
  ],
  correctAnswerIndex:1
  ),
  Question(
  question:"Newton's third law of motion states that:",
  options:[
  "An object at rest will remain at rest unless acted upon by an unbalanced force",
  "The acceleration of an object is directly proportional to the net force acting on it and inversely proportional to its mass",
  "For every action, there is an equal and opposite reaction",
  "The sum of all forces acting on an object is zero"
  ],
  correctAnswerIndex:2
  ),
  Question(
  question:"The formula for calculating momentum is:",
  options:[
  "p=mv",
  "p=ma",
  "p=mgh",
  "p=1/2mv^2"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The unit of momentum is:",
  options:[
  "kg m/s",
  "kg m/s^2",
  "N s",
  "N m"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The principle of conservation of momentum states that:",
  options:[
  "The total momentum of a system remains constant if no external forces act on it",
  "The total momentum of a system remains constant if no internal forces act on it",
  "The total momentum of a system remains constant if no net forces act on it",
  "The total momentum of a system remains constant if no unbalanced forces act on it"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"Impulse is defined as:",
  options:[
  "Change in momentum",
  "Change in velocity",
  "Change in acceleration",
  "Change in force"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The formula for calculating impulse is:",
  options:[
  "I=Ft",
  "I=Fd",
  "I=Fv",
  "I=Fm"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The unit of impulse is:",
  options:[
  "kg m/s",
  "kg m/s^2",
  "N s",
  "N m"
  ],
  correctAnswerIndex:2
  ),
  Question(
  question:"The formula for calculating pressure is:",
  options:[
  "P=F/A",
  "P=Fd/A",
  "P=Fv/A",
  "P=Fm/A"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The unit of pressure is:",
  options:[
  "Joule",
  "Newton",
  "Watt",
  "Pascal"
  ],
  correctAnswerIndex:3
  ),
  Question(
  question:"The formula for calculating density is:",
  options:[
  "ρ=m/V",
  "ρ=m/A",
  "ρ=m/L",
  "ρ=m/T"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The unit of density is:",
  options:[
  "kg/m^3",
  "kg/m^2",
  "kg/m",
  "kg"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The formula for calculating weight is:",
  options:[
  "W=mg",
  "W=ma",
  "W=mgh",
  "W=1/2mv^2"
  ],
  correctAnswerIndex:0
  ),
  Question(
  question:"The unit of weight is:",
  options:[
  "Joule",
  "Newton",
  "Watt",
  "Pascal"
  ],
  correctAnswerIndex:1
  ),
  Question(
  question: 'What is the formula for calculating torque?',
  options: ['τ = Fr', 'τ = Fd', 'τ = Fv', 'τ = Fm'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the unit of torque?',
  options: ['N m', 'N s', 'N m/s', 'N m/s^2'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the formula for calculating angular momentum?',
  options: ['L = Iω', 'L = Iα', 'L = τt', 'L = τθ'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the unit of angular momentum?',
  options: ['kg m^2/s', 'kg m^2/s^2', 'N m s', 'N m s^2'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the formula for calculating moment of inertia?',
  options: ['I = mr^2', 'I = ma^2', 'I = mv^2', 'I = mg^2'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the unit of moment of inertia?',
  options: ['kg m^2', 'kg m/s^2', 'N m s', 'N m s^2'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the formula for calculating centripetal force?',
  options: ['Fc = mv^2/r', 'Fc = ma^2/r', 'Fc = mg^2/r', 'Fc = mr^2/r'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the unit of centripetal force?',
  options: ['Joule', 'Newton', 'Watt', 'Pascal'],
  correctAnswerIndex: 1,
  ),
  Question(
  question: 'What is the formula for calculating centripetal acceleration?',
  options: ['ac = v^2/r', 'ac = a^2/r', 'ac = g^2/r', 'ac = r^2/r'],
  correctAnswerIndex: 0,
  ),
  Question(
  question: 'What is the unit of centripetal acceleration?',
  options: ['m/s^2', 'm/s', 'm/s^3', 'm'],
  correctAnswerIndex: 0,
  ),
  Question(
  question:'What does Hooke’s Law state?',
  options:[
  "The extension of a spring is directly proportional to the applied force, provided the elastic limit is not exceeded.",
  "The extension of a spring is inversely proportional to the applied force, provided the elastic limit is not exceeded.",
  "The extension of a spring is directly proportional to the applied force, provided the elastic limit is exceeded.",
  "The extension of a spring is inversely proportional to the applied force, provided the elastic limit is exceeded."
  ],
  correctAnswerIndex :0
  ),
    Question(
        question:'What does Archimedes’ principle state?',
        options:[
          "When a body is immersed in a fluid, it experiences an upthrust equal to the weight of the fluid displaced.",
          "When a body is immersed in a fluid, it experiences an upthrust equal to the weight of the fluid displaced plus the weight of the body.",
          "When a body is immersed in a fluid, it experiences an upthrust equal to the weight of the fluid displaced minus the weight of the body.",
          "When a body is immersed in a fluid, it experiences an upthrust equal to half the weight of the fluid displaced."
        ],
        correctAnswerIndex :0
    ),
    Question(
        question:'What does Bernoulli’s principle state?',
        options:[
          "For an ideal fluid flowing through a horizontal pipe, an increase in the speed of the fluid occurs simultaneously with a decrease in pressure or a decrease in the fluid's potential energy.",
          "For an ideal fluid flowing through a horizontal pipe, an increase in the speed of the fluid occurs simultaneously with an increase in pressure or an increase in the fluid's potential energy.",
          "For an ideal fluid flowing through a horizontal pipe, a decrease in the speed of the fluid occurs simultaneously with a decrease in pressure or a decrease in the fluid's potential energy.",
          "For an ideal fluid flowing through a horizontal pipe, a decrease in the speed of the fluid occurs simultaneously with an increase in pressure or an increase in the fluid's potential energy."
        ],
        correctAnswerIndex :0
    ),
    Question(
        question:'What does Pascal’s principle state?',
        options:[
          "Pressure applied to an enclosed fluid is transmitted undiminished to every part of the fluid and to the walls of its container.",
          "Pressure applied to an enclosed fluid is transmitted diminished to every part of the fluid and to the walls of its container.",
          "Pressure applied to an enclosed fluid is transmitted undiminished only to every part of the fluid and not to the walls of its container.",
          "Pressure applied to an enclosed fluid is transmitted diminished only to every part of the fluid and not to the walls of its container."
        ],
        correctAnswerIndex :0
    )


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

