import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String topic;
  final Function(String) callbackFunction;

  //OR
  //final Function callbackFunction;
  //OR
  //final VoidCallback voidCallbackFunction;
  //OR:
  //final   ValueChanged<String> callbackFunction;
  //final   ValueChanged callbackFunction;

  const MyButtons(
      {Key? key, required this.topic, required this.callbackFunction})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callbackFunction(topic);
        //voidCallbackFunction();
        //OR:
        //voidCallbackFunction
      },
      child: Container(
        width: double.maxFinite,
        height: 70,
        margin: const EdgeInsets.only(top: 20, left: 40, right: 40, bottom: 20),
        decoration: BoxDecoration(
            color: Colors.lightBlue, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            topic,
            style: const TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
