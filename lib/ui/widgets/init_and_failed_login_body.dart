import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/ui/screens/signin_screen.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/signin_button.dart';

class InitAndFailedLoginBody extends StatelessWidget {
  final String? message;
  InitAndFailedLoginBody({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: BaseSignIn.of(context)?.formKey,
        child: Column(
          children: [
            TextFormField(
              controller: BaseSignIn.of(context)?.usernameController,
              validator: (value) {
                if (value!.length < 4) {
                  return 'username should be more than 4 letters';
                }
              },
            ),
            TextFormField(
              obscureText: true,
              controller: BaseSignIn.of(context)?.passwordController,
              validator: (value) {
                if (value!.length < 4) {
                  return 'password should be more than 4 letters';
                }
              },
            ),
            const SignInButton(),
            message != null
                ? Text(
                    message!,
                    style: TextStyle(color: Colors.red),
                  )
                : Text('')
          ],
        ),
      ),
    );
  }
}
