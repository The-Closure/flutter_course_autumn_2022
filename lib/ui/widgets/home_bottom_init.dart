import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';

class HomeBottomInitial extends StatelessWidget {
  const HomeBottomInitial({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextButton(
              onPressed: () {
                BlocProvider.of<AuthBloc>(context).add(LogoutEvent());
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.all<Color>(
                  Colors.red.shade100,
                ),
              ),
              child: Text(
                'logout',
                style: TextStyle(color: Colors.red),
              ))
        ],
      ),
    );
  }
}
