import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key key}) : super(key: key);
  final int resultScore;
  // Function result;
  Result(this.resultScore);

  String get resultPhrase{
    String resultText= "You did it!";
    if(resultScore <=8){
      resultText="You are awesome and innocent!";

    }else if(resultScore<= 12){
      resultText="Prett likeblae makchut dont copy the same you duffer";
    }else{
      resultText="You came to an end now";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: [
          Text(
          resultPhrase, 
          style:TextStyle(
            fontSize:36, fontWeight:FontWeight.bold
            ), textAlign:TextAlign.center),
            ElevatedButton(
              // style:ButtonStyle(
              //   backgroundColor:MaterialStateProperty.all(Colors.blue)
              // ),
              style:ElevatedButton.styleFrom(primary:Colors.blue,
              onPrimary:Colors.white),
              child:Text("A Elevated Button"),
              onPressed:(){
                print("A Elevated Button");
              }
            )
        ],
      )
    );
  }
}