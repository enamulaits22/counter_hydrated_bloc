import 'package:hydrated_bloc/hydrated_bloc.dart';
part 'counter_state.dart';

class CounterCubit extends HydratedCubit<CounterState> {
  CounterCubit() : super(CounterState(counterValue: 0));

  void increment() => emit(CounterState(counterValue: state.counterValue + 1));
  void decrement() => emit(CounterState(counterValue: state.counterValue - 1));
  
  @override
  CounterState? fromJson(Map<String, dynamic> json) =>  CounterState(counterValue: json['value']);
  // CounterState? fromJson(Map<String, dynamic> json) {
  //   return CounterState.counterValue[json['brightness'] as int];
  // }
  
  @override
  Map<String, dynamic>? toJson(CounterState state) => {'value': state.counterValue};
}
