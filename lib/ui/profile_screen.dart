import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerIcon(),
        title: const Text('Perfil'),
      ),
      drawer: const myDrawer(),
      body: const Center(
        child: Text(
          'Esta es la pantalla de Perfil',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
