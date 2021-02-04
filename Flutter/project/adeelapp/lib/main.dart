import 'package:adeelapp/quote.dart';
import 'package:adeelapp/template.dart';
import 'package:flutter/material.dart';

void main() => runApp(Apapp());

class Apapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quote App',
      theme: ThemeData(
        fontFamily: 'Sedgwick Ave',
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

// Widget cardMaker(quote) {
//   return CardTemplate(quote);
// }

class _HomeState extends State<Home> {
  List<Quote> quotes = [
    Quote(
        Q: '“Inke haath mein sone ka katora dedo phir bhi yeh bheek maangenge “',
        A: 'Raju'),
    Quote(
        Q: '“Ek jamana tha jab ham bhi gareeb hua karte tha 25 din mein paisa double “',
        A: 'Raju'),
    Quote(Q: '25 din mein paisa dddouble ', A: 'Raju'),
    Quote(Q: '“Yeh Babu Rao ka style.” ', A: 'Baabu rao'),
    Quote(Q: '“Beta, tumse na ho paayega.” ', A: 'Ramadheer'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red[500],
        centerTitle: true,
        title: Text(
          'Dank Quote App',
          style: TextStyle(
            fontSize: 27,
            // fontFamily: 'Sedgwick Ave',
          ),
        ),
      ),
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Column(
          children: quotes
              .map((quote) => CardTemplate(
                  quote: quote,
                  del: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ),
      ),
    );
  }
}
