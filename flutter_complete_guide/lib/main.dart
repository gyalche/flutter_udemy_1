import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';
void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex=0;

  void  answerQuestion(){
    questionIndex=questionIndex+1;
    
  }

 Widget build(BuildContext context){
   const questions=[
     {'questionText':'What\'s your favroite color',
      'answers':['Black','white', 'green', 'Red']
     },
     {'questionText':'Whats your favrite animal',
      'answers':['cow', 'dog', 'cat', 'fish']
     }

    //  'what is your favroite color',
    //  'your favroite animals',
   ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("My First App")),//app bar
      body: Column(
        children:<Widget>[
          // Text(questions[questionIndex]['questionText']),
          Question(questions[questionIndex]['questionText'], questionText: '',),
          ...(questions[questionIndex]['answers'] as List<String>).map((answer){
            return Answer(answerQuestion, answer);
          }).toList()
          // Answer(answerQuestion),
          // Answer(answerQuestion),
          // Answer(answerQuestion),

          // ElevatedButton(onPressed: answerQuestion, child: Text("Answer1")),
          // ElevatedButton(onPressed: answerQuestion, child: Text("Answer2")),
          // ElevatedButton(onPressed: answerQuestion, child: Text("Answer2")),

        ],
      )//body
    ));
  }
}
