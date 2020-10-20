class CounterModel {
  final int counter;
  final CounterState counterState;

  CounterModel(this.counter, this.counterState);
}

enum CounterState { normal, error }
