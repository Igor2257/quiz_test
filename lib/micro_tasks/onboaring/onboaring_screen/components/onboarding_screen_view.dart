part of '../onboarding_screen.dart';

class OnboardingScreenView extends StatelessWidget {
  const OnboardingScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingBloc, OnboardingState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: state.perPageItems
                      .map((e) => Column(
                            children: [
                              ListViewWithItemsWidget(
                                list: e,
                              ),
                              Text(
                                e.first.question,
                                style: const TextStyle(fontSize: 32),
                              ),
                            ],
                          ))
                      .toList(),
                ),
              ),
              const PageIndicatorWidget(),
              const Row(
                children: [
                  Spacer(),
                  NextPageButtonWidget(),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
