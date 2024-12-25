import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quiz_test/use_case/entity/selectable_item_entity.dart';

part 'onboarding_event.dart';
part 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
