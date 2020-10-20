import 'package:flutter/material.dart';
import 'package:framytest/models/counter.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({
    Key key,
    @required CounterModel counter,
  })  : _counter = counter,
        super(key: key);

  final CounterModel _counter;

  @override
  Widget build(BuildContext context) {
    TextStyle partialStyle = Theme.of(context).textTheme.headline4;
    TextStyle overriddenStyle = TextStyle(
        color: _counter.counterState == CounterState.normal
            ? Theme.of(context).accentColor
            : Theme.of(context).errorColor);
    return Column(
      // Column is also a layout widget. It takes a list of children and
      // arranges them vertically. By default, it sizes itself to fit its
      // children horizontally, and tries to be as tall as its parent.
      //
      // Invoke "debug painting" (press "p" in the console, choose the
      // "Toggle Debug Paint" action from the Flutter Inspector in Android
      // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
      // to see the wireframe for each widget.
      //
      // Column has various properties to control how it sizes itself and
      // how it positions its children. Here we use mainAxisAlignment to
      // center the children vertically; the main axis here is the vertical
      // axis because Columns are vertical (the cross axis would be
      // horizontal).
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '${_counter.counter}',
          style: partialStyle.merge(overriddenStyle),
        ),
      ],
    );
  }
}
