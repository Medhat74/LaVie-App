part of 'authentication_cubit.dart';

@immutable
abstract class AuthenticationState {}

class AuthenticationInitial extends AuthenticationState {}
class RegisterLoadingState extends AuthenticationState {}
class RegisterSuccessState extends AuthenticationState {}
class RegisterErrorState extends AuthenticationState {}
class LoginLoadingState extends AuthenticationState {}
class LoginSuccessState extends AuthenticationState {}
class LoginErrorState extends AuthenticationState {}