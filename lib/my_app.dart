import 'package:callback_functions/my_buttons.dart';
import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String topic = "Packages";

  void callback(String varTopic) {
    setState(() {
      topic = varTopic;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Callback Function'),
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 70,
            margin:
            const EdgeInsets.only(top: 50, left: 40, right: 40, bottom: 20),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                "We are learning Flutter $topic",
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          MyButtons(topic: "Cubit", callbackFunction: callback),
          MyButtons(topic: "BLoc", callbackFunction: callback),
          MyButtons(topic: "GetX", callbackFunction: callback)
          /*MyButtons(topic: "New", callbackFunction: (String value){
              setState(() {
                topic = value;
              });
            }),*/
          /*MyButtons(topic: "CC", callbackFunction: (String c){
              callback(c);
            }),*/
        ],
      ),
    );
  }
}