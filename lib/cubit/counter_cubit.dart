import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

//passing int to make counter of int type
class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    debugPrint('Before: $state');
    emit(state + 1);
    debugPrint('After: $state');
  }

  void decrement() {
    debugPrint('Before: $state');
    if (state > 0) {
      emit(state - 1);
    }
    debugPrint('After: $state');
  }
}


// celan code state logic in one class