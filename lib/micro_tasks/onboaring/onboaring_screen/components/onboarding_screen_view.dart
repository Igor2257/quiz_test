part of '../onboarding_screen.dart';

class OnboardingScreenView extends StatelessWidget {
  const OnboardingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return PageView(
          physics: const NeverScrollableScrollPhysics(),
          children: state.perPageItems
              .map((e) => ListViewWithItemsWidget(
                    list: e,
                  ))
              .toList(),
        );
      },
    );
  }
}
