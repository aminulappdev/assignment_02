abstract class CounterState {
  int counterValue = 0;

  CounterState({required this.counterValue});
}

class CounterInitial extends CounterState {
  CounterInitial({required super.counterValue});
}

class CounterIncrementState extends CounterState {
  CounterIncrementState({required super.counterValue});
}

class CounterDecrementState extends CounterState {
  CounterDecrementState({required super.counterValue});
}
