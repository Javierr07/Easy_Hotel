import 'package:easy_hotel/ui/home_screen.dart';
import 'package:easy_hotel/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/auth_bloc.dart';
import 'blocs/navigation_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Easy Hotel',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      home: BlocProvider(
        create: (context) => AuthBloc(context, NavigatorBloc(context)),
        child: LoginScreen(), // Inicia con la pantalla de inicio de sesión
      ),
    );
  }
}