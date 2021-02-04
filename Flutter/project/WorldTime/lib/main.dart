import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black45,
          elevation: 0,
          centerTitle: true,
          title: Text("World Time app"),
        ),
        body: Container(
          color: Colors.amber,
          // height: 45,
          // width: 457,
          child: Center(
            child: Text(
              'Hello App',
              style: TextStyle(fontSize: 45, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
