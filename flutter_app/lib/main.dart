import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MyScaffold());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to  Tuan anh',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: null),
          title: Center(
            child: Text("Welcome to Tuan anh"),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search), tooltip: "Search", onPressed: null)
          ],
        ),
        body: Center(
          child: RandomWords(),
        ),
        floatingActionButton: FloatingActionButton(
          tooltip: "Add",
          child: Icon(Icons.add),
          onPressed: null,
        ),
      ),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() {
    return new RandomWordsState();
  }
}

class RandomWordsState extends State<RandomWords> {
  final List<WordPair> _words = <WordPair>[];
  final Set<WordPair> _saved = Set<WordPair>();
  final _biggerFont = const TextStyle(fontSize: 18.0);
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return ListView.builder(itemBuilder: (context, index) {
      if (index.isOdd) {
        return Divider();
      }
      if (index >= _words.length) {
        _words.addAll(generateWordPairs().take(10));
      }
      return _buildRow(_words[index]);
    });
  }

  Widget _buildRow(WordPair wordPair) {
    final bool alreadySaved = _saved.contains(wordPair);
    return ListTile(
      title: Text(wordPair.asPascalCase, style: _biggerFont),
      trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null
      ),
      onTap: () {
        setState(() {
          if(alreadySaved){
            _saved.remove(wordPair);
          } else {
            _saved.add(wordPair);
          }
        });
      },
    );
  }
}

//class MyApp extends StatelessWidget {
//  @override
//  Widget build( BuildContext context) {
//
//    return MaterialApp(
//        title: 'Welcome to  Tuan anh',
//        home: MyScaffold()
//    );
//  }
//
//}

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue),
      child: Row(
        children: <Widget>[
          IconButton(
              icon: Icon(Icons.menu),
              tooltip: "Navigation menu",
              onPressed: null),
          Expanded(
            child: title,
          ),
          IconButton(
              icon: Icon(Icons.search), tooltip: "Search", onPressed: null)
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
              title: Text("Example Title",
                  style: Theme.of(context).primaryTextTheme.title)),
          Expanded(
              child: Center(
            child: Text("data"),
          ))
        ],
      ),
    );
  }
}
