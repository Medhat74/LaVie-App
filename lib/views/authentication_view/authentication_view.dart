import 'package:flutter/material.dart';
import 'package:life_app/core/components/genreal_text.dart';
import 'package:life_app/core/utils/size_config.dart';
import 'package:life_app/src/app_colors.dart';
import 'package:life_app/views/authentication_view/register_view.dart';

import 'login_view.dart';

class AuthenticationView extends StatelessWidget {
  const AuthenticationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 100.0, // double
          title:  Column(
            children: [
              Align(
                  alignment: Alignment.topRight,
                  child: Image.asset("assets/images/treeTop.png")
              ),

              Image.asset("assets/images/LaVie.png" ,height: 20),
            ]
          ),
          bottom:  TabBar(
            labelColor: AppColors.KPrimaryColor,

            tabs: <Widget>[
              Tab(
                child: GeneralText(txt: "Sign Up", fontSize: SizeConfig.defaultSize!*2.0),
              ),
              Tab(
                child: GeneralText(txt: "Log in", fontSize: SizeConfig.defaultSize!*2.0),
              ),

            ],
          ),
        ),
        body:  TabBarView(

          children: <Widget>[
            Center(
              child: RegisterView(),
            ),
            Center(
              child: LoginView(),
            ),
          ],
        ),
      ),
    );
  }
}
