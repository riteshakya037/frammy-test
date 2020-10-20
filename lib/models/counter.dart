import 'package:framy_annotation/framy_annotation.dart';

@FramyModel()
class CounterModel {
  final int counter;
  final CounterState counterState;

  CounterModel(this.counter, this.counterState);
}

@FramyModel()
enum CounterState { normal, error }
