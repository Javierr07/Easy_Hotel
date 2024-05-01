import 'package:flutter/material.dart';

class NavigationBloc {

  void navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }

  void navigateToRegistration(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/registration');
  }

}