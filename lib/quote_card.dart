import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {
  Quote quotes;
  Function delete;
  QuoteCard(this.quotes, this.delete);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      margin: EdgeInsets.fromLTRB(10.0,10.0,10.0,0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quotes.text, style: TextStyle(fontSize: 15.0),),
            Text(quotes.author, style: TextStyle(fontSize: 13.0),),
            IconButton(onPressed: (){delete;}, icon: Icon(Icons.delete)),
          ],
        ),
      ),
    );
  }
}
