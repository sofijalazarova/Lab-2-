import 'package:exercise_app/clothes_answer.dart';
import 'package:flutter/material.dart';
import './clothes_question.dart';
import './clothes_answer.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState(){
    return _MyAppState();
  }

}


class _MyAppState extends State<MyApp> {

  void _iWasTapped() { 
    setState(() {
      _questionIndex += 1;
    });
    print('I was tapped'); 
    
  }

  var questions = [
    {
      
      'question': "Select",
      'answer': ['Jeans','Pants','Skirt']},
      
    {
      'question': "Select",
      'answer': ['Blouse','T-shirt','Dress']},

    {
      'question': "Select",
      'answer': ['Jacket','Suit','Coat']},
  ];

  var _questionIndex = 0;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Hello World",
      home: Scaffold(
        appBar: AppBar(title: Text("Sofija Lazarova 191170")
        ),
        body: Column(
          children: [
            ClothesQuestion(questions[_questionIndex]['question'] as String),
            ...(questions[_questionIndex]['answer'] as List<String>).map((answer) {
              return ClothesAnswer(_iWasTapped, answer);
            }),
        ],)
    ),);
  }
}