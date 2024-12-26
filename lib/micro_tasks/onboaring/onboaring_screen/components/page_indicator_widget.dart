part of '../onboarding_screen.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<OnboardingBloc, OnboardingState, List<int>>(
      selector: (state) {
        return [state.page, state.perPageItems.length];
      },
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(state.last, (index) {
            return Container(
              margin: const EdgeInsets.only(left: 10),
              height: 6,
              width: index == state.first ? 36 : 6,
              decoration: BoxDecoration(
                color: AppColors.indicatorColor,
                borderRadius:
                    BorderRadius.circular(index == state.first ? 8 : 90),
              ),
            );
          }),
        );
      },
    );
  }
}
