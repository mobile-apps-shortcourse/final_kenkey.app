import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'tracking_event.dart';
part 'tracking_state.dart';
class TrackingBloc extends Bloc<TrackingEvent, TrackingState> {
  TrackingBloc() : super(TrackingInitial());
  @override
  Stream<TrackingState> mapEventToState(
    TrackingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
