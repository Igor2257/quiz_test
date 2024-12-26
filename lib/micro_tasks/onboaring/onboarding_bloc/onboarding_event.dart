part of 'onboarding_bloc.dart';

@immutable
sealed class OnboardingEvent {}

class LoadData extends OnboardingEvent {
  LoadData();
}

class ChangePage extends OnboardingEvent {


  ChangePage();
}

class SelectAnswerOnQuestion extends OnboardingEvent{
  final String question;
  final SelectableItemEntity item;

  SelectAnswerOnQuestion({required this.question, required this.item});
}




