import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/init_and_failed_login_body.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/loading_login_body.dart';

class BaseSignIn extends InheritedWidget {
  BaseSignIn({Key? key, required this.child}) : super(key: key, child: child);

  final Widget child;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  static BaseSignIn? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<BaseSignIn>();
  }

  @override
  bool updateShouldNotify(BaseSignIn oldWidget) {
    return true;
  }
}

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthSucceed) {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/home_screen', (route) => false);
          } else if (state is AuthFailed) {
            SnackBar snackBar = SnackBar(content: Text(state.message));
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          }
        },
        builder: (context, state) {
          if (state is AuthInitial) {
            return InitAndFailedLoginBody();
          } else if (state is AuthLoading || state is AuthSucceed) {
            return LoadingLoginBody();
          } else if (state is AuthFailed) {
            return InitAndFailedLoginBody(
              message: state.message,
            );
          } else {
            return Center(
              child: Text('unexpected state'),
            );
          }
        },
      ),
    );
  }
}
