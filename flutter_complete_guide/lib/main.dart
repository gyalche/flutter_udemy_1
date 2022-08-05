import 'package:flutter/material.dart';
// import './answer.dart';
// import './question.dart';
import "./quiz.dart";
import "./result.dart";

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

 
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   final questions=const[
     {'questionText':'What\'s your favroite color',
      'answers':[
        {'text':'Black', 'score':10},
        {'text':'white', 'score':6}, 
        {'text':'green', 'score':9},
        {'text':'Red', 'score':5}
       ]
     },
     {'questionText':'Whats your favrite animal',
      'answers':['cow', 'dog', 'cat', 'fish']
     }

    //  'what is your favroite color',
    //  'your favroite animals',
   ];
  var questionIndex=0;
  var _totalScore=0;

  void _resetQuize(){
    setState((){
      questionIndex=0;
      _totalScore=0;

    });

    
  }
  void  answerQuestion(int score){

    _totalScore = _totalScore + score;
      questionIndex=questionIndex+1;

    if(questionIndex<questions.length){
      print("we have more questions");
    }
    
  }

 Widget build(BuildContext context){
  
    return MaterialApp(home: Scaffold(
      
      appBar: AppBar(title: Text("My First App")),//app bar
      body: questionIndex < questions.length ? 
      Quiz(
          answerQuestion:answerQuestion, 
          questions:questions,
          questionIndex:questionIndex
      )
      : Result(_totalScore)//body
    ));
  }
}
