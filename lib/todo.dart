import 'package:flutter/material.dart';

class ToDo extends StatefulWidget {
  const ToDo({Key? key}) : super(key: key);

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {

  double _progress = 0;

  void _incrementCounter(){
    setState(() {
    _progress += 0.1;  
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(children: [
        LinearProgressIndicator(value: _progress,),
        TextButton(onPressed: _incrementCounter, child: const Text("dodaj")),
    ],);
  }
}