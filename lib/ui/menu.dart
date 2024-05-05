import 'package:easy_hotel/ui/aboutus_screen.dart';
import 'package:easy_hotel/ui/economic_screen.dart';
import 'package:easy_hotel/ui/home_screen.dart';
import 'package:easy_hotel/ui/login_screen.dart';
import 'package:easy_hotel/ui/luxury_screen.dart';
import 'package:easy_hotel/ui/profile_screen.dart';
import 'package:easy_hotel/ui/standar_screen.dart';
import 'package:flutter/material.dart';

class myDrawer extends StatelessWidget {
  const myDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'EasyHotel Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: const Text('Inicio'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Hoteles Economicos'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EconomicScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Hoteles Estandar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const StandarScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Hoteles de Lujo'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LuxuryScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Sobre Nosostros'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutUsScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Perfil'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileScreen()),
              );
            },
          ),
          ListTile(
            title: const Text('Iniciar Sesion'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}