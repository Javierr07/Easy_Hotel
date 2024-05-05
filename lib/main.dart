import 'package:easy_hotel/blocs/data.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'ui/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/auth_bloc.dart';
import 'blocs/navigation_bloc.dart';


Future<void> main() async {
  runApp(const MyApp());
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
fetchRoomData();
fetchRoomData1();
fetchRoomData2();
fetchSPData();
fetchData();
   
}



class MyApp extends StatelessWidget {

  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      title: 'Easy Hotel',
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      home: BlocProvider(
        create: (context) => AuthBloc(context, NavigatorBloc(context)),
        child: const HomeScreen(), 
      ),
    );
  }
  
}
