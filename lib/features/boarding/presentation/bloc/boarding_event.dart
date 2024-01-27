part of 'boarding_bloc.dart';

abstract class BoardingEvent extends Equatable {
  const BoardingEvent();
  @override
  List<Object> get props => [];
}

class WaitingLauncherEvent extends BoardingEvent {}

class SkipButtonEvent extends BoardingEvent {}

class ChooseLangEvent extends BoardingEvent {
  final String lang;
  const ChooseLangEvent({required this.lang});
  @override
  List<Object> get props => [lang];
}
