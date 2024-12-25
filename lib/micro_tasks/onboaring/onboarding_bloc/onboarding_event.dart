part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

class LoadData extends OnboardingEvent {
  LoadData();
}

class ChangePage extends OnboardingEvent {
  final int page;

  ChangePage({required this.page});
}
