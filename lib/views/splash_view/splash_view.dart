import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:life_app/core/utils/naviagtion.dart';
import 'package:life_app/core/utils/size_config.dart';
import 'package:life_app/views/authentication_view/authentication_view.dart';

import '../../services/sp_helper/cache_helper.dart';
import '../authentication_view/register_view.dart';
import '../home_view/home_view.dart';




class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(

      body: Center(
        child: Image.asset(
          'assets/images/LaVie.png',
        ),
      ),

    );
  }

  startTime() async {
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {

    String ?token = SharedPreferencesHelper.getData(key: 'token');
    SharedPreferencesHelper.removeData(key: 'token');
    //AppNavigator.customNavigator(context: context, screen:  AuthenticationView(), finish: true);

    if(token ==null) {
      AppNavigator.customNavigator(context: context, screen: AuthenticationView(), finish: true);
    }
    else {
      AppNavigator.customNavigator(context: context, screen: HomeView(), finish: true);
    }
  }


}
