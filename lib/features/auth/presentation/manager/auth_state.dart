part of 'auth_bloc.dart';

sealed class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

final class AuthInitial extends AuthState {}

final class ChangeEye extends AuthState {
  final bool eye;

  const ChangeEye(this.eye);
}

final class ChangeUserImage extends AuthState {
  final File? userProfile;

  const ChangeUserImage(this.userProfile);
}