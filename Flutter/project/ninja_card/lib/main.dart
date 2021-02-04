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
            elevation: 0,
            centerTitle: true,
            title: Text(
              'NINJA ID CARD',````````
              style: TextStyle(
                fontSize: 22,
                letterSpacing: 2,
              ),
            ),
            backgroundColor: Colors.grey[800],
          ),
          backgroundColor: Colors.grey[900],
          body: Padding(
            padding: const EdgeInsets.all(20), //all(8.0),
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
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Chacha Chaudhary',
                  style: TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 25,
                    letterSpacing: 3,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  'CURRENT NINJA LEVEL',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
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
                      size: 30,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'chacha@chaudhary.com',
                      style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 20,
                        letterSpacing: 3,
                        fontWeight: FontWeight.w900,
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
