import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'purchasing_event.dart';
part 'purchasing_state.dart';
class PurchasingBloc extends Bloc<PurchasingEvent, PurchasingState> {
  PurchasingBloc() : super(PurchasingInitial());
  @override
  Stream<PurchasingState> mapEventToState(
    PurchasingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
