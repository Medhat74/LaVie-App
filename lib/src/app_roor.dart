import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_app/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:life_app/views/home_view/home_view.dart';
import 'package:life_app/views/splash_view/splash_view.dart';

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) => AuthenticationCubit(),),
      ],
      child: MaterialApp(
            home: SplashView(),
        debugShowCheckedModeBanner: false,
          ),
    );
  }
}
