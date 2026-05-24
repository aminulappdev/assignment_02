import 'package:assignment_02/bloc/counter_bloc.dart';
import 'package:assignment_02/bloc/counter_event.dart';
import 'package:assignment_02/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Screen")),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              "Counter Value: ${state.counterValue}",
              style: const TextStyle(fontSize: 24),
            );
          },
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<CounterBloc>().add(IncrementEvent()),
        child: const Icon(Icons.add),
      ),
    );
  }
}
