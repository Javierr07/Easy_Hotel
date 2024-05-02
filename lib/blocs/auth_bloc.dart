import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

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
  final BuildContext context;
  final NavigatorBloc navigatorBloc;
  AuthBloc(this.context, this.navigatorBloc) : super(AuthInitialState());

  final List<User> users = [
    User(username: 'user', password: 'pass'),
    User(username: 'usuario2@example.com', password: 'contraseña2'),
    // Puedes agregar más usuarios aquí según sea necesario
  ];

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is SignInWithEmailAndPassword) {
      // Lógica de autenticación...
      if (isValidCredentials(event.email, event.password, users)) {
        yield AuthenticatedState();
        navigatorBloc.add(NavigateToHomeScreen());
      } else {
        yield UnauthenticatedState();
      }
    }
  }
}

  // Método para validar las credenciales (ejemplo)
bool isValidCredentials(String email, String password, List<User> users) {
  for (var user in users) {
    if (user.username == email && user.password == password) {
      return true;
    }
  }
  return false;
}


// Clase de usuario
class User {
  final String username;
  final String password;

  User({required this.username, required this.password});
}