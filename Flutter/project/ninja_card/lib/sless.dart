import 'package:flutter/material.dart';

void main() => runApp(Ninja());

class Ninja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'NINJA_CARD',
      // color: Colors.pink,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('NINJA ID CARD'),
            backgroundColor: Colors.grey[800],
          ),
          backgroundColor: Colors.grey[900],
          body: Padding(
            padding: const EdgeInsets.all(10), //all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/Chacha_Chaudhary.jpg'),
                    radius: 70.0,
                  ),
                ),
                Divider(
                  height: 70,
                  color: Colors.grey[300],
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    color: Colors.grey[400],
                    // fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Chacha Chaudhary',
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    // fontSize: 20,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  '8',
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 25,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.redAccent,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'chacha@chaudhary.com',
                      style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 20,
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
