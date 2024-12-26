import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'package:quiz_test/micro_tasks/onboaring/onboarding_use_case/entity/selectable_item_entity.dart';
import 'package:quiz_test/micro_tasks/onboaring/onboarding_use_case/onboarding_use_case_impl.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(const OnboardingState()) {
    on<LoadData>(_onLoadData);
    on<ChangePage>(_onChangePage);
    on<SelectAnswerOnQuestion>(_onSelectAnswerOnQuestion);
    on<GenerateQuiz>(_onGenerateQuiz);
  }

  final _onboardingUseCaseImpl = OnboardingUseCaseImpl.instance;

  FutureOr<void> _onLoadData(
      LoadData event, Emitter<OnboardingState> emit) async {
    final allItems = await _onboardingUseCaseImpl.getSelectableItems();
    allItems.sort((a, b) => a.question.compareTo(b.question));

    final questions = allItems.map((e) => e.question).toSet();

    final perPageItems = questions.map((question) {
      return allItems.where((e) => e.question == question).toList();
    }).toList();

    emit(
      state.copyWith(
        questions: questions,
        allItems: allItems,
        perPageItems: perPageItems,
        pageController: PageController(),
      ),
    );
  }

  FutureOr<void> _onChangePage(
      ChangePage event, Emitter<OnboardingState> emit) async {
    if (state.page == state.perPageItems.length - 1) {
      add(GenerateQuiz());
      return;
    }
    emit(
      state.copyWith(
        page: (state.page + 1),
      ),
    );
  }

  FutureOr<void> _onSelectAnswerOnQuestion(
      SelectAnswerOnQuestion event, Emitter<OnboardingState> emit) {
    // Создаем копию perPageItems
    final perPageItems =
        List<List<SelectableItemEntity>>.from(state.perPageItems);

    // Обрабатываем каждый список в perPageItems
    for (var itemList in perPageItems) {
      for (var item in itemList) {
        // Сбрасываем выбор всех элементов
        item.isSelected = false;
        // Если id совпадает, ставим isSelected в true
        if (item.id == event.item.id) {
          item.isSelected = true;
        }
      }
    }

    // Обновляем состояние
    emit(state.copyWith(perPageItems: perPageItems));
  }

  FutureOr<void> _onGenerateQuiz(GenerateQuiz event, Emitter<OnboardingState> emit) {
  }
}
