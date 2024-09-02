part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;
  const factory OnboardingState.success() = _Success;
  const factory OnboardingState.changePageSuccess() = _changePageSuccess;
  const factory OnboardingState.changePageLoading() = _changePageLoading;
}
