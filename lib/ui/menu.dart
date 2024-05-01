import 'package:easy_hotel/ui/aboutus_screen.dart';
import 'package:easy_hotel/ui/economic_screen.dart';
import 'package:easy_hotel/ui/home_screen.dart';
import 'package:easy_hotel/ui/luxury_screen.dart';
import 'package:easy_hotel/ui/profile_screen.dart';
import 'package:easy_hotel/ui/standar_screen.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class myDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menú lateral',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Inicio'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Hoteles Economicos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EconomicScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Hoteles Estandar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StandarScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Hoteles de Lujo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LuxuryScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Sobre Nosostros'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Perfil'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Iniciar Sesion'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}