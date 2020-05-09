import 'package:extended_text/extended_text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final longText =
      'This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.This is a long text.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('WidgetSpan error demo')),
      body: ListView(
        children: <Widget>[
          Text.rich(
            TextSpan(text: longText),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 16),
          Text.rich(
            TextSpan(
              text: longText,
              children: [WidgetSpan(child: Icon(Icons.keyboard_arrow_down))],
            ),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
          SizedBox(height: 16),
          ExtendedText.rich(
            TextSpan(text: longText),
            overFlowTextSpan: OverFlowTextSpan(children: [
              WidgetSpan(child: Icon(Icons.keyboard_arrow_down)),
            ]),
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
