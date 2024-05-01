import 'package:flutter/material.dart';

class NavigationBloc {
  // Método para navegar a la pantalla de inicio de sesión
  void navigateToLogin(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/login');
  }

  // Método para navegar a la pantalla de registro
  void navigateToRegistration(BuildContext context) {
    Navigator.pushReplacementNamed(context, '/registration');
  }

// Otros métodos de navegación según sea necesario
}