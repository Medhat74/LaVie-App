import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../models/authentication_hub.dart';
import '../../models/user_hub.dart';
import '../../services/dio/dio_helper.dart';
import '../../services/sp_helper/cache_helper.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationInitial());

  static AuthenticationCubit get(context)=>BlocProvider.of(context);
  AuthenticationHub? registerHub;
  UserHub? userHub;



  void userRegister( {required String name , required String email , required String password}){
    emit(RegisterLoadingState());
    try {
      DioHelper.postData(url: 'register', data: {
        'name': name,
        'password': password,
        'email': email,
      }).then((value) {
        var jsonData=jsonDecode(value.data);
        registerHub = AuthenticationHub.fromJson(jsonData);
        emit(RegisterSuccessState());
      }).catchError((error){
        emit(RegisterErrorState());
        if (kDebugMode) {
          print(error.toString());
        }
      });
    }
    catch (SocketConnection){
      emit(RegisterErrorState());
    }
  }

  void userLogin({ required String email , required String password}){
    emit(LoginLoadingState());

    DioHelper.postData(url: 'https://lavie.orangedigitalcenteregypt.com/api/v1/auth/signin', data: {
      'password': password,
      'email': email,
    }).then((value) {
      var jsonData=jsonDecode(value.data);
      userHub = UserHub.fromJson(jsonData);
      SharedPreferencesHelper.saveData(key: "token", value: userHub!.data!.accessToken!);
      emit(LoginSuccessState());
    }).catchError((error){
      emit(LoginErrorState());
      if (kDebugMode) {
        print(error.toString());
      }
    });
  }


}
