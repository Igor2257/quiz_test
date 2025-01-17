import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_test/micro_tasks/login/login_bloc/login_bloc.dart';
import 'package:quiz_test/utils/enum/enums.dart';
import 'package:quiz_test/utils/navigation/app_routes.dart';


part 'components/apple_button_widget.dart';
part 'components/email_password_widget.dart';
part 'components/email_text_field.dart';
part 'components/google_button_widget.dart';
part 'components/password_text_field.dart';
part 'components/register_button_widget.dart';
part 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.user != null) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            AppRoutes.onboardingScreen,
            (route) => false,
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Авторизация'),
          centerTitle: true,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EmailPasswordWidget(
                registerOrSingIn: RegisterOrSingIn.signIn,
              ),
              SizedBox(height: 16),
              GoogleButtonWidget(),
              SizedBox(height: 16),
              AppleButtonWidget(),
              SizedBox(height: 16),
              RegisterButtonWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
