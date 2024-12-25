import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_test/micro_tasks/onboaring/onboarding_use_case/entity/selectable_item_entity.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingState()) {
    on<LoadData>(_onLoadData);
    on<ChangePage>(_onChangePage);
    on<OnboardingEvent>(_on);
  }

  FutureOr<void> _onLoadData(LoadData event, Emitter<OnboardingState> emit) {}

  FutureOr<void> _onChangePage(
      ChangePage event, Emitter<OnboardingState> emit) async {
    emit(state.copyWith(page: event.page));
  }
}
