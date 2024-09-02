import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:newstore/core/strings/app_strings.dart';
import 'package:newstore/core/styles/images/app_images.dart';
import 'package:newstore/features/onboarding/model/page_view_model.dart';


part 'onboarding_state.dart';
part 'onboarding_cubit.freezed.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  PageController controller = PageController(initialPage: 0);
  int index = 0;
  List<PageViewModel> pages = const [
    PageViewModel(
      title: AppStrings.chooseProducts,
      description: AppStrings.onBoarding1Description,
      image: AppLightImages.onboarding1,
    ),
    PageViewModel(
      title: AppStrings.makePayment,
      description: AppStrings.onBoarding2Description,
      image: AppLightImages.onboarding2,
    ),
    PageViewModel(
      title: AppStrings.getYourOrder,
      description: AppStrings.onBoarding3Description,
      image: AppLightImages.onboarding1,
    )
  ];
  OnboardingCubit() : super(const OnboardingState.initial());

  void onPageChanged(int page) {
    emit(const OnboardingState.changePageLoading());
    index = page;
    emit(const OnboardingState.changePageSuccess());
  }
}
