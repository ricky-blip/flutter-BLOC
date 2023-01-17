import 'package:bloc/bloc.dart';

class CounterCubitBloc extends Cubit<int> {
  CounterCubitBloc({this.init = 0}) : super(init);

  int init;

  void decrementCubit() => emit(state - 1);
  void incrementCubit() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    print(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    print(error);
    super.onError(error, stackTrace);
  }
}
