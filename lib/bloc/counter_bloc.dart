import 'package:assignment_02/bloc/counter_event.dart';
import 'package:assignment_02/bloc/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial(counterValue: 0)) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementEvent) {
        counter++;
        emit(CounterIncrementState(counterValue: counter));
      }
      if (event is DecrementEvent) {
        counter--;
        emit(CounterDecrementState(counterValue: counter));
      }
    });
  }
}
