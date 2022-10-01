import 'package:flutter/material.dart';

typedef StringValue = void Function(String);

class EditingPage extends StatelessWidget {
  final TextEditingController textController = TextEditingController();
  //final StringValue callback;
  //OR:
  final ValueSetter<String> callback;

  EditingPage({Key? key,required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Communication"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 50,
            margin: const EdgeInsets.all(8),
            child: TextFormField(
              onTap: () {},
              controller: textController,
              maxLines: 1,
              maxLength: 20,
              decoration: const InputDecoration(
                hintText: "Enter Some Text Here",
                contentPadding: EdgeInsets.all(8),
              ),
            ),
          ),
          ElevatedButton(
              child: const Text("Submit"),
              onPressed: () {
                callback(textController.text);
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
