
part of 'counter_bloc.dart';

//!counter e is a part of counter_bloc.dart


sealed class CounterEvent {}

//creating event
final class CounterIncremented extends CounterEvent {}

final class CounterDecremented extends CounterEvent {}