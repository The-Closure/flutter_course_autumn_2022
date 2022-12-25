import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/home_bottom_bar_loading.dart';
import 'package:flutter_course_autumn_2022/ui/widgets/home_bottom_init.dart';
import 'package:http/http.dart' as http;

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      padding: EdgeInsets.all(16),
      child: Row(children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.person),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.settings),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: InkWell(
            child: Icon(Icons.more_vert),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return BlocProvider(
                      create: (context) => AuthBloc(AuthService(http.Client())),
                      child: Builder(
                        builder: (context) {
                          return BlocConsumer<AuthBloc, AuthState>(
                            listener: (context, state) {
                              if (state is AuthOutState) {
                                Navigator.of(context).pushNamedAndRemoveUntil(
                                    '/signin_screen', (route) => false);
                              }
                            },
                            builder: (context, state) {
                              if (state is AuthInitial) {
                                return HomeBottomInitial();
                              } else if (state is AuthLoading ||
                                  state is AuthOutState) {
                                return HomeBottomBarLoading();
                              } else {
                                return Center(
                                  child: Text('unexpected state'),
                                );
                              }
                            },
                          );
                        }
                      ),
                    );
                  });
            },
          ),
        )
      ]),
    );
  }
}
