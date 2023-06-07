import 'package:bloc/bloc.dart';
import 'package:protobuf/protobuf.dart';
import 'package:protos/protos.dart';

import 'counter_repo.dart';

class CounterCubit extends Cubit<CounterState> {
  final CounterRepo _repo;

  CounterCubit(this._repo) : super(CounterState()..freeze()) {
    _repo.stream.listen((message) {
      emit(state.rebuild((state) {
        state.mergeFromBuffer(message);
      }));
    });
  }

  void increment() => _repo
      .send(CounterEvent(type: CounterEvent_Type.INCREMENT).writeToBuffer());

  void decrement() => _repo
      .send(CounterEvent(type: CounterEvent_Type.DECREMENT).writeToBuffer());
}
