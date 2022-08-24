import 'package:flutter/material.dart';
import 'package:life_app/core/components/genreal_text.dart';
import 'package:life_app/core/utils/size_config.dart';
import 'package:life_app/views/authentication_view/components/end_screen.dart';
import 'package:life_app/views/authentication_view/components/text_form_field_auth.dart';

class RegisterView extends StatelessWidget {

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Form(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormFieldAuth(text: "First Name", controller: firstNameController),
                  TextFormFieldAuth(text: "First Name", controller: lastNameController),
                ],
              ),
              TextFormFieldAuth(text: "E-mail", controller: firstNameController),
              TextFormFieldAuth(text: "Password", controller: lastNameController),
              TextFormFieldAuth(text: "Confirm Password", controller: lastNameController),
            ],
          )
        ),
        const EndScreen(),
      ],
    );
  }
}
