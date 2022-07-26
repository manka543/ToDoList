import 'package:flutter/material.dart';

class TestSTF extends StatefulWidget {
  const TestSTF({Key? key}) : super(key: key);

  @override
  State<TestSTF> createState() => _TestSTFState();
}

class _TestSTFState extends State<TestSTF> {

  List<Text> value = [const Text("oro"),const Text("na"),const Text("oponentach"),const Text("jest"),const Text("robione")];

  void aleoro(){
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    value.add(const Text("essa"));
    return Column(children: value,);
  }
}