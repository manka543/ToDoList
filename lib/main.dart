import 'package:flutter/material.dart';
import 'todo.dart';
import 'teststf.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _progress = 0;

  void _incrementCounter(bool alfa) {
    setState(() {
      _progress+= 0.1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("aleoro"),),
      body: Column(children: [
        LinearProgressIndicator(value: _progress,),
        TextButton(onPressed: () => _incrementCounter(true),onLongPress:() => _incrementCounter(true), child: const Text("dodaj")),
        const ToDo(),
        const TestSTF(),
      ],),
    );
  }
}
