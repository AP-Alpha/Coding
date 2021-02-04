import 'package:adeelapp/quote.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTemplate extends StatelessWidget {
  // const CardTemplate({
  //   Key key,
  // }) : super(key: key);
  final Quote quote;
  final Function del;
  CardTemplate({this.quote, this.del});
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      margin: EdgeInsets.all(7),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 5, 5, 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.Q,
              style: TextStyle(
                fontSize: 20,
                // fontFamily: 'SedgwickAve',
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              quote.A,
              style: TextStyle(
                fontSize: 20,
                // fontFamily: 'SedgwickAve',
              ),
            ),
            FlatButton.icon(
              onPressed: del,
              color: Colors.red[400],
              icon: Icon(
                Icons.delete,
                color: Colors.black,
              ),
              label: Text(
                'Delete this quote now',
                style: TextStyle(
                    // fontFamily: 'Sedgwick Ave',
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
