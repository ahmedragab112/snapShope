part of 'appcontroller_cubit.dart';

abstract class AppControllerState extends Equatable {
  const AppControllerState();

  @override
  List<Object> get props => [];
}

class AppcontrollerInitial extends AppControllerState {}

class ChangeLanguage extends AppControllerState {}

class ChangeTheme extends AppControllerState {}
