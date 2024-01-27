import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'boarding_event.dart';
part 'boarding_state.dart';

class BoardingBloc extends Bloc<BoardingEvent, BoardingState> {
  static BoardingBloc get(context) => BlocProvider.of(context);
  bool isSkip = true;

  BoardingBloc() : super(BoardingInitial()) {
    on<BoardingEvent>((event, emit) async {
      /// here logic
      if (event is WaitingLauncherEvent) {
        emit(WaitingLauncherState());
      }
      if (event is SkipButtonEvent) {
        isSkip = !isSkip;
        emit(SkipButtonState(isSkip: isSkip));
      }
      if (event is ChooseLangEvent) {
        emit(ChooseLangState(lang: event.lang));
      }
    });
  }
}
