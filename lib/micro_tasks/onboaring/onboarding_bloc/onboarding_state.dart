part of 'onboarding_bloc.dart';

@immutable
class OnboardingState {
  final List<SelectableItemEntity> allItems;
  final List<SelectableItemEntity> perPageItems;

  final String question;

  final int page;

  const OnboardingState({
    this.allItems = const [],
    this.perPageItems = const [],
    this.question = '',
    this.page = 0,
  });

  OnboardingState copyWith({
    List<SelectableItemEntity>? allItems,
    List<SelectableItemEntity>? perPageItems,
    String? question,
    int? page,
  }) {
    return OnboardingState(
      allItems: allItems ?? this.allItems,
      perPageItems: perPageItems ?? this.perPageItems,
      question: question ?? this.question,
      page: page ?? this.page,
    );
  }
}
