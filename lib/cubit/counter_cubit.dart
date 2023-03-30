import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:point_counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterIncrement());

  int teamAPoints = 0;
  int teamBPoints = 0;

  void teamIncrement({String? teamName, int? buttomNumber}) {
    if (teamName == 'A') {
      teamAPoints += buttomNumber!;
      emit(CounterIncrement());
    } else if (teamName == 'B') {
      teamBPoints += buttomNumber!;
      emit(CounterIncrement());
    } else {
      teamAPoints = 0;
      teamBPoints = 0;
      emit(CounterIncrement());
    }
  }
}
