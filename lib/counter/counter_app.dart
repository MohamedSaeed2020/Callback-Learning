import 'dart:developer';

import 'package:callback_functions/counter/counter.dart';
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Communication'),
      ),
      body: Center(
        child: CounterScreen(
          onPressedCallback: (int value) {
            setState(() {
              count += value;
            });
            log('onPressedCallback: Count has been updated: $count');
          },
          count: count,
          voidCallback: () {
            log('voidCallback: Count has been updated: $count');
          },
        ),
      ),
    );
  }
}