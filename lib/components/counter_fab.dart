import 'package:flutter/material.dart';
import 'package:framy_annotation/framy_annotation.dart';

@FramyWidget()
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
