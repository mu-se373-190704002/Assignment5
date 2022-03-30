import 'package:flutter/material.dart';

void main() {
  runApp(ToolOfApp());
}
class ToolOfApp extends StatefulWidget {
  const ToolOfApp({Key? key}) : super(key: key);

  @override
  State<ToolOfApp> createState() => _ToolOfAppState();
}

class _ToolOfAppState extends State<ToolOfApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: const Text("ImageViewApp"),
          ),
          body: Column(
            children: <Widget>[
              ElevatedButton(onPressed: (){},
                  child: Text("Go to First Page"))
            ],
          ),
        ) );
  }
}