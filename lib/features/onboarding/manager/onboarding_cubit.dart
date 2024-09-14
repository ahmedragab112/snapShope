import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newstore/core/extension/extension.dart';
import 'package:newstore/core/strings/app_strings.dart';
import 'package:newstore/core/styles/images/app_images.dart';
import 'package:newstore/features/onboarding/model/page_view_model.dart';

part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  PageController controller = PageController(initialPage: 0);
  int index = 0;

  OnboardingCubit() : super(const OnboardingState.initial());

  void onPageChanged(int page) {
    emit(const OnboardingState.changePageLoading());
    index = page;
    emit(const OnboardingState.changePageSuccess());
  }

  List<PageViewModel> pages(BuildContext context) => [
         PageViewModel(
          title: context.getText.choseProduct,
          description: context.getText.onbaording1Des,
          image: AppLightImages.onboarding1,
        ),
         PageViewModel(
          title: context.getText.makePayment,
          description: context.getText.onboardin2Des,
          image: AppLightImages.onboarding2,
        ),
         PageViewModel(
          title: context.getText.getYourOrder,
          description: context.getText.onbaording1Des,
          image: AppLightImages.onboarding2,
        )
      ];
}
