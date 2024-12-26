import 'package:quiz_test/micro_tasks/onboaring/onboarding_use_case/entity/selectable_item_entity.dart';

abstract class OnboardingUseCase{
  Future<List<SelectableItemEntity>> getSelectableItems();

}