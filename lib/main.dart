import 'package:flutter/material.dart';
import 'Quote.dart';

void main() => runApp(const MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<Quote> quotes= [
    Quote('A rose by any other name would smell as sweet.', 'William Shakespeare'),
    Quote('All that glitters is not gold.', 'William Shakespeare'),
    Quote('All the world’s a stage, and all the men and women merely players.', 'William Shakespeare'),
    Quote('Ask not what your country can do for you; ask what you can do for your country.', 'John Kennedy'),
    Quote('Ask, and it shall be given you; seek, and you shall find.	the Bible	Greek', 'The Bible'),
    Quote('Eighty percent of success is showing up.', 'Woody Allen'),
    Quote('Elementary, my dear Watson.', 'Sherlock Holmes')
  ];

  Widget quoteTemplate(quotess){
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quotess.text, style: TextStyle(fontSize: 15.0),),
            Text(quotess.author, style: TextStyle(fontSize: 13.0),),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('QUOTES'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      )
    );
  }
}
