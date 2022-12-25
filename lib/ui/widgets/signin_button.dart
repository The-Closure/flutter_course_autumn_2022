import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/ui/screens/signin_screen.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          if (BaseSignIn.of(context)?.formKey.currentState?.validate() ??
              false) {
            BlocProvider.of<AuthBloc>(context).add(
              SigninEvent(
                username: BaseSignIn.of(context)?.usernameController.text ?? '',
                password: BaseSignIn.of(context)?.passwordController.text ?? '',
              ),
            );
          }
        },
        child: Text('sign in'));
  }
}
