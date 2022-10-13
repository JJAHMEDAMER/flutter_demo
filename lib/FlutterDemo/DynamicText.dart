import 'package:flutter/material.dart';

class DynamicText extends StatefulWidget {
  const DynamicText({super.key});

  @override
  State<DynamicText> createState() => _DynamicTextState();
}

class _DynamicTextState extends State<DynamicText> {
  String text = "Dynamic Text";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(text)),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(25),
          child: TextField(
            onChanged: (enteredValue) {
              setState(() {
                text = enteredValue;
              });
            },
            decoration: const InputDecoration(
              label: Text("Type Something ..."),
            ),
          ),
        ),
      ),
    );
  }
}
