part of 'counter_bloc.dart';

class CounterState extends Equatable {
  final int counterValue;
  const CounterState({required this.counterValue});

  @override
  List<Object> get props => [counterValue];

  Map<String, dynamic> toMap() {
    return {"counterValue": counterValue};
  }

  factory CounterState.fromMap(Map<String, dynamic> mp) {
    return CounterState(counterValue: mp["counterValue"]?.toInt() ?? 0);
  }
}

class CounterInitial extends CounterState {
  const CounterInitial() : super(counterValue: 0);
}

class IncrementState extends CounterState {
  const IncrementState(int incrementedValue)
      : super(counterValue: incrementedValue);
}

class DecrementState extends CounterState {
  const DecrementState(int decrementedValue)
      : super(counterValue: decrementedValue);
}
