import 'package:callback_functions/editing/editing_page.dart';
import 'package:flutter/material.dart';

class ChangeTextScreen extends StatefulWidget {
  const ChangeTextScreen({Key? key}) : super(key: key);

  @override
  State<ChangeTextScreen> createState() => _ChangeTextScreenState();
}

class _ChangeTextScreenState extends State<ChangeTextScreen> {
  String editableText = 'Want To Change Text?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Communication'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(editableText),
            ElevatedButton(
                child: const Text("Next Page"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => EditingPage(
                        callback: (value) {
                         setState(() {
                           editableText = value;
                         });
                        },
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
