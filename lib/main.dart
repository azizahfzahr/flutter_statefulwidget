import 'package:flutter/material.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Videtis me spirare libertatis auram',
        author: 'Ulrich v. Hutten'),
    Quote(
        text: 'Mens immota manet, lacrimae volvuntur inanes',
        author: 'Ovidius'),
    Quote(text: 'Die Luft der Freiheit weht', author: 'Stanford U. Motto'),
    Quote(text: 'Wir müssen siegen, wir werden siegen', author: 'N.N.')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Awesome Quotes'),
          centerTitle: true,
        ),
        body: ListView(
          children: quotes
              .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    setState(() {
                      quotes.remove(quote);
                    });
                  }))
              .toList(),
        ));
  }
}