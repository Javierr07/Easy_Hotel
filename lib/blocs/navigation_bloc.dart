import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../events/navigation_event.dart';
import '../ui/home_screen.dart';

class NavigatorBloc extends Bloc<NavigationEvent, dynamic> {
  final BuildContext context;
  NavigatorBloc(this.context) : super(null);


  @override
  Stream<dynamic> mapEventToState(NavigationEvent event) async* {
    if (event is NavigateToHomeScreen) {
      // Aquí manejas la navegación a HomeScreen
      // Por ejemplo:
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    }
  }
}