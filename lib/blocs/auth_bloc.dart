import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../events/auth_event.dart';
import '../events/navigation_event.dart';
import 'navigation_bloc.dart';

// Estados para la autenticación
abstract class AuthState {}

class AuthInitialState extends AuthState {}

class AuthenticatedState extends AuthState {}

class UnauthenticatedState extends AuthState {}

// Bloc de autenticación
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final NavigatorBloc navigatorBloc;
  AuthBloc(this.navigatorBloc) : super(AuthInitialState());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInWithEmailAndPassword) {
      try {
        UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: event.email,
          password: event.password,
        );
        yield AuthenticatedState();
        navigatorBloc.add(NavigateToHomeScreen());
      } on FirebaseAuthException catch (e) {
        yield UnauthenticatedState();
      }
    }
  }
}
