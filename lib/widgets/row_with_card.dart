import 'package:flutter/material.dart';
import 'page_display.dart';

class RowWithCardWidget extends StatefulWidget {
  const RowWithCardWidget({Key key, @required this.index}) : super(key: key);
  final int index;

  @override
  _RowWithCardWidgetState createState() => _RowWithCardWidgetState();
}

class _RowWithCardWidgetState extends State<RowWithCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.flight,
          size: 48.0,
          color: Colors.lightBlue,
        ),
        title: Text('Airplane ${widget.index}'),
        subtitle: Text('Very Cool'),
        trailing: Text(
          '${widget.index} * 7%',
          style: TextStyle(color: Colors.lightBlue),
        ),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => PageDisplay(index: widget.index)));
        },
      ),
    );
  }
}
