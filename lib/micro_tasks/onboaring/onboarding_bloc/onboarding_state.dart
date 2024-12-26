part of 'onboarding_bloc.dart';

@immutable
class OnboardingState {
  final List<SelectableItemEntity> allItems;
  final List<List<SelectableItemEntity>> perPageItems;
  final Set<String> questions;

  final int page;
  final PageController? pageController;

  const OnboardingState({
    this.allItems = const [],
    this.perPageItems = const [],
    this.questions = const {},
    this.page = 0,
    this.pageController,
  });

  OnboardingState copyWith({
    List<SelectableItemEntity>? allItems,
    List<List<SelectableItemEntity>>? perPageItems,
    Set<String>? questions,
    int? page,
    PageController? pageController
  }) {
    return OnboardingState(
      allItems: allItems ?? this.allItems,
      perPageItems: perPageItems ?? this.perPageItems,
      questions: questions ?? this.questions,
      page: page ?? this.page,
      pageController: pageController ?? this.pageController,
    );
  }
}
