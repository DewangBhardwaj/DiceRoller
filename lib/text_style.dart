import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{
  
  //StyledText(String text, {super.key}) : text = text;
  //this can be also used for code below
  
  const StyledText(this.text, {super.key});
  
  final String text;

  @override

  Widget build(context){
    return Text(
      text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
            ),
            );
  }  
}