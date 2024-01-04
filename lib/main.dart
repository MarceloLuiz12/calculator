import 'package:flutter/material.dart';

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
  String currentNumber = "0";

  void calculator(String number){
    setState(() {
      switch (number) {
        case "AC":
          currentNumber = "0";
          break;
        case "<X":
          currentNumber = currentNumber.substring(0, currentNumber.length - 1);
          break;
        case "=":
          currentNumber = currentNumber;
          break;
        default:
          if (currentNumber == "0") {
            currentNumber = number;
          } else {
            currentNumber += number;
          }
      }
    });
  }


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
             Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
                Text(currentNumber, style: TextStyle(fontSize: 56)),
            ],
          ),
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
                GestureDetector(
                  child: Text(item, style: const TextStyle(fontSize: 40)), onTap: () {
                    calculator(item);
                  } ,),
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
