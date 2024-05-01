import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerIcon(),
        title: Text('Perfil'),
      ),
      drawer: myDrawer(),
      body: Center(
        child: Text(
          'Esta es la pantalla de Perfil',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}