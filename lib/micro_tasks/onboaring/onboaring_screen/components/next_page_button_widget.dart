part of '../onboarding_screen.dart';

class NextPageButtonWidget extends StatelessWidget {
  const NextPageButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<OnboardingBloc>(context).add(ChangePage());
      },
      child: const Row(
        children: [
          Text("Next"),
          SizedBox(width: 16),
          Icon(Icons.navigate_next)
        ],
      ),
    );
  }
}
