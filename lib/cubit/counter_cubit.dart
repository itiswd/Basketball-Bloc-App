import 'package:basket_counter/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAState());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement(String team, int value) {
    if (team == 'A') {
      teamAPoints += value;
      emit(CounterAState());
    } else {
      teamBPoints += value;
      emit(CounterBState());
    }
  }

  void resetValue() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAState());
    emit(CounterBState());
  }
}
