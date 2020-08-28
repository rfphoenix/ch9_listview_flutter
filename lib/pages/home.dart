import 'package:flutter/material.dart';
import 'package:ch9_listview_flutter/widgets/header.dart';
import 'package:ch9_listview_flutter/widgets/row_with_card.dart';
import 'package:ch9_listview_flutter/widgets/row.dart';

class Home extends StatefulWidget {
  const Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(
          child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                if (index == 0) {
                  return HeaderWidget(index: index);
                } else if (index >= 1 && index <= 3) {
                  return RowWithCardWidget(index: index);
                } else {
                  return RowWidget(index: index);
                }
              }),
        ));
  }
}
