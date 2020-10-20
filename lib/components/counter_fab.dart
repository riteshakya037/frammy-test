import 'package:flutter/material.dart';

class CounterFAB extends StatelessWidget {
  final VoidCallback onPressed;

  const CounterFAB({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      tooltip: 'Increment',
      child: Icon(Icons.add),
    );
  }
}
