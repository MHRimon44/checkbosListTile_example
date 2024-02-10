// ignore_for_file: avoid_print, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Checkbox Widget Example',
    theme: ThemeData(primarySwatch: Colors.purple),
    home: Scaffold(
      appBar: AppBar(
        title: Text('Checkbox Widget Example'),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _cValue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration:
              BoxDecoration(border: Border.all(color: Colors.redAccent)),
          child: CheckboxListTile(
            value: _cValue,
            onChanged: (value) {
              setState(() {
                _cValue = value!;
              });
              print(value);
            },
            title: Text('title'),
            subtitle: Text('Sub Title'),
            secondary:
                Container(width: 50, height: 50, child: Icon(Icons.favorite)),
            activeColor: Colors.green,
            checkColor: Colors.red,
            selected: _cValue,
            controlAffinity: ListTileControlAffinity.leading,
          ),
        ));
  }
}
