part of 'boarding_bloc.dart';

abstract class BoardingState extends Equatable {
  const BoardingState();
  @override
  List<Object> get props => [];
}

class BoardingInitial extends BoardingState {
  @override
  List<Object> get props => [];
}

class WaitingLauncherState extends BoardingState {}

class SkipButtonState extends BoardingState {
  final bool isSkip;
  const SkipButtonState({required this.isSkip});
  @override
  List<Object> get props => [isSkip];
}

class ChooseLangState extends BoardingState {
  final String lang;
  const ChooseLangState({required this.lang});
  @override
  List<Object> get props => [lang];
}
