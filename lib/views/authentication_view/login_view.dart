import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:life_app/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:life_app/blocs/authentication_cubit/authentication_cubit.dart';
import 'package:life_app/core/components/general_button.dart';
import 'package:life_app/core/utils/naviagtion.dart';
import 'package:life_app/services/sp_helper/cache_helper.dart';

import '../home_view/home_view.dart';
import 'components/end_screen.dart';
import 'components/text_form_field_auth.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthenticationCubit, AuthenticationState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var authenticationCubit = AuthenticationCubit.get(context);
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Form(
              child: Column(
                children: [
                  TextFormFieldAuth(
                      text: "E-mail", controller: emailController),
                  TextFormFieldAuth(
                      text: "Password", controller: passwordController),
                  GeneralButton(text: 'Submit', function: () {
                    print(emailController.text);
                    print(passwordController.text);
                    authenticationCubit.userLogin(
                        email: emailController.text,
                        password: passwordController.text);
                    AppNavigator.customNavigator(context: context, screen: HomeView(), finish: true);


                  },)
                ],
              ),
            ),
            const EndScreen(),
          ],
        );
      },
    );
  }
}
