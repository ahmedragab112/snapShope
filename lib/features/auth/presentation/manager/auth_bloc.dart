import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool eye = true;

  AuthBloc() : super(AuthInitial()) {
    on<ChangeEyeEvent>(_changeEye);
  }

  void _changeEye(ChangeEyeEvent event, Emitter<AuthState> emit) {
    emit(AuthInitial());

    eye = !eye;

    emit(ChangeEye(eye));
  }
}
