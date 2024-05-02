import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

@immutable
abstract class AuthEvent {}

class SignInWithEmailAndPassword extends AuthEvent {
  final String email;
  final String password;

  SignInWithEmailAndPassword({required this.email, required this.password});
}