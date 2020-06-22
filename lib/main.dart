import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class RandomEnglishWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new RandomEnglishWordsState();
    // return a state's object. where is the state's class?
  }
}

// state
class RandomEnglishWordsState extends State<RandomEnglishWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return new Text(
      wordPair.asPascalCase,
      style: new TextStyle(fontSize: 25.0,color: Colors.red),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    // build function return a "Widget"
    // final giống như const là hằng số không thể thay đổi được
    return MaterialApp(
      // widget with "Matterial Design"
      // thiết kế kiểu dạng vật liệu
      title: "This is my first Flutter App",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("This is Header's title"),
        ),
        body: new Center(
          // child: new Text(
          //   // wordPair.asUpperCase,
          //   // style: new TextStyle(fontSize: 20.0),
            
          // ),
          child: new RandomEnglishWords()
        ),
      ),
    );
  }
}
