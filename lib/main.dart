import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> allNumbers = ["7", "8", "9", "/", "4", "5", "6", "X", "1", "2", "3", "-", "0", ",", "=", "+"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Calculadora'),
        ),
      ),
      body:   Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Text('0', style: TextStyle(fontSize: 40),),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('AC', style: TextStyle(fontSize: 40),),
              Text(''),
              Text(''),
              Text('<X', style: TextStyle(fontSize: 40),),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var item in allNumbers.sublist(0, 4))
                Text(item, style: const TextStyle(fontSize: 40),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var item in allNumbers.sublist(4, 8))
                Text(item, style: const TextStyle(fontSize: 40),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var item in allNumbers.sublist(8, 12))
                Text(item, style: const TextStyle(fontSize: 40),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var item in allNumbers.sublist(12, 16))
                Text(item, style: const TextStyle(fontSize: 40),),
            ],
          ),
          Text('')
        ],
    )));
  }
}
