import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import "./question.dart";
import "./answer.dart";

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  // const Quiz({Key key}) : super(key: key);
  Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex
  });

  @override
  Widget build(BuildContext context) {
      return Column(
        children:<Widget>[
          // Text(questions[questionIndex]['questionText']),
          Question(questions[questionIndex]['questionText'] as String),
          ...(questions[questionIndex]['answers'] as List <Map<String, Object>>).map((answer){
            return Answer(()=>answerQuestion(answer["score"]), answer["text"] as String);
          }).toList()
          // Answer(answerQuestion),
          // Answer(answerQuestion),
          // Answer(answerQuestion),

          // ElevatedButton(onPressed: answerQuestion, child: Text("Answer1")),
          // ElevatedButton(onPressed: answerQuestion, child: Text("Answer2")),
          // ElevatedButton(onPressed: answerQuestion, child: Text("Answer2")),

        ],
      );
  }
}