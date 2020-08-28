import 'package:flutter/material.dart';

class PageDisplay extends StatelessWidget {
  const PageDisplay({Key key, @required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Display'),
      ),
      body: SafeArea(
          child: Center(
        child: Text(
          'The index for this view is: $index',
          style: TextStyle(fontSize: 48.0, color: Colors.purple),
        ),
      )),
    );
  }
}
