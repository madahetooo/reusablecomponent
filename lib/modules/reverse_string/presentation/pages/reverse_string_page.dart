import 'package:flutter/material.dart';

class ReverseStringApp extends StatefulWidget {
  const ReverseStringApp({super.key});

  @override
  State<ReverseStringApp> createState() => _ReverseStringAppState();
}

class _ReverseStringAppState extends State<ReverseStringApp> {
  final reverseStringController = TextEditingController();
  String reversedWord = "olleH";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text(
            "Reverse App",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: reverseStringController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter a string to reverse"),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 200,
                child: MaterialButton(
                  color: Colors.redAccent,
                  onPressed: () {
                    if (reverseStringController.text.isEmpty) return;
                    setState(() {
                      reversedWord = reverseString(reverseStringController.text);
                    });
                  },
                  child: Text(
                    "Reverse",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                reversedWord,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String reverseString(String initialWord) {
  return initialWord.split('').reversed.join();
}
