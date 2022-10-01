import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  final int count;
  final Function(int a) onPressedCallback;
  //final Function(int) onPressedCallback;
  final VoidCallback voidCallback;

  const CounterScreen(
      {Key? key,
      required this.count,
      required this.onPressedCallback,
      required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () {
            onPressedCallback(1);
          },
          icon: const Icon(Icons.add),
        ),
        ElevatedButton(
          onPressed: voidCallback,
          child: Text(
            count.toString(),
          ),
        ),
        IconButton(
          onPressed: (){
            onPressedCallback(-1);
          },
          icon: const Icon(Icons.remove),
        ),
      ],
    );
  }
}
