import 'package:quiz_test/micro_tasks/onboaring/onboarding_use_case/entity/selectable_item_entity.dart';

import 'onboarding_use_case.dart';

class OnboardingUseCaseImpl implements OnboardingUseCase {
  factory OnboardingUseCaseImpl() => instance;

  OnboardingUseCaseImpl._();

  static final OnboardingUseCaseImpl instance = OnboardingUseCaseImpl._();

  @override
  Future<List<SelectableItemEntity>> getSelectableItems()async {
    return [
      // Screen 1: Which Exam Are You Studying For?
      SelectableItemEntity(
        id: "nclex-pn",
        text: "NCLEX-PN",
        question: "Which Exam Are You Studying For?",
        iconPath: "path/to/nclex-pn-icon",
        isSelected: false,
      ),
      SelectableItemEntity(
        id: "nclex-rn",
        text: "NCLEX-RN",
        question: "Which Exam Are You Studying For?",
        iconPath: "path/to/nclex-rn-icon",
        isSelected: true,
      ),
      SelectableItemEntity(
        id: "other",
        text: "Other",
        question: "Which Exam Are You Studying For?",
        iconPath: "path/to/other-icon",
        isSelected: false,
      ),

      // Screen 2: Choose Your Current Level
      SelectableItemEntity(
        id: "beginner",
        text: "Beginner",
        question: "Choose Your Current Level",
        iconPath: "path/to/beginner-icon",
        isSelected: false,
      ),
      SelectableItemEntity(
        id: "intermediate",
        text: "Intermediate",
        question: "Choose Your Current Level",
        iconPath: "path/to/intermediate-icon",
        isSelected: false,
      ),
      SelectableItemEntity(
        id: "advanced",
        text: "Advanced",
        question: "Choose Your Current Level",
        iconPath: "path/to/advanced-icon",
        isSelected: true,
      ),

      // Screen 3: Choose Your Target Level
      SelectableItemEntity(
        id: "pass",
        text: "Pass",
        question: "Choose Your Target Level",
        iconPath: "path/to/pass-icon",
        isSelected: false,
      ),
      SelectableItemEntity(
        id: "advanced",
        text: "Advanced",
        question: "Choose Your Target Level",
        iconPath: "path/to/advanced-icon",
        isSelected: false,
      ),
      SelectableItemEntity(
        id: "master",
        text: "Master",
        question: "Choose Your Target Level",
        iconPath: "path/to/master-icon",
        isSelected: true,
      ),
    ];
  }
}
