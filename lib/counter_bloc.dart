import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0){
    on<IncrementCounterEvent>((event, emit) => emit(state + 1));
    on<AddToCounterEvent>((event, emit) => emit(state + event.number));
  }
}
