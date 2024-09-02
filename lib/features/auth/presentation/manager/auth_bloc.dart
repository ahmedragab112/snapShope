import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:newstore/core/di/locator.dart';
import 'package:newstore/core/helper/image_selector.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  bool eye = false;
  File? userProfile;

  AuthBloc() : super(AuthInitial()) {
    on<ChangeEyeEvent>(_changeEye);
    on<ChangeUserImageEvent>(_changeUserImage);
  }

  void _changeEye(ChangeEyeEvent event, Emitter<AuthState> emit) {
    emit(AuthInitial());

    eye = !eye;

    emit(ChangeEye(eye));
  }

  void _changeUserImage(
      ChangeUserImageEvent event, Emitter<AuthState> emit) async {
    emit(AuthInitial());

    userProfile = await sl<ImageSelector>().showSelectImageDialog();

    emit(ChangeUserImage(userProfile));
  }
}
