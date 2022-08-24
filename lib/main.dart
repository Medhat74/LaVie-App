import 'package:flutter/material.dart';
import 'package:life_app/services/dio/dio_helper.dart';
import 'package:life_app/services/sp_helper/cache_helper.dart';
import 'package:life_app/src/app_roor.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();
  DioHelper.init();

  runApp(const AppRoot());
}
