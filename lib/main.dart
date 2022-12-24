import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter_course_autumn_2022/blocs/brand_bloc/brand_bloc.dart';
import 'package:flutter_course_autumn_2022/services/auth_service.dart';
import 'package:flutter_course_autumn_2022/services/brand_service.dart';
import 'package:flutter_course_autumn_2022/ui/screens/home_screen.dart';
import 'package:flutter_course_autumn_2022/ui/screens/signin_screen.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(AuthService(http.Client())),
        )
      ],
      // create: (context) => AuthBloc(AuthService(http.Client())),
      child: MaterialApp(
        home: BaseSignIn(child: SignInScreen()),
        // home: HomeScreen(),
        routes: {
          '/home_screen': (context) => BlocProvider(
                create: (context) =>
                    BrandBloc(BrandService(http.Client()))..add(FetchBrandsEvent()),
                child: HomeScreen(),
              ),
        },
      ),
    );
  }
}