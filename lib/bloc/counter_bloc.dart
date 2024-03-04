import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';

//takes event , state
class CounterBloc extends Bloc<CounterEvent, int> {
  // CounterBloc(super.initialState);
  CounterBloc() : super(0) {
    //creating event
    on<CounterIncremented>(
      (event, emit) {
        emit(state + 1);
      },
    );

    on<CounterDecremented>(
      (event, emit) {
        if (state > 0) {
          emit(state - 1);
        }
      },
    );
  }
}
