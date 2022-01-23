part of 'engine_mode_bloc.dart';

@immutable
abstract class EngineModeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class ArcadeEngineModeSelected extends EngineModeEvent {}

class PauseBackgroundMusicSelected extends EngineModeEvent {}

class ResumeBackgroundMusicSelected extends EngineModeEvent {}

class WindowsEngineModeSelected extends EngineModeEvent {}
