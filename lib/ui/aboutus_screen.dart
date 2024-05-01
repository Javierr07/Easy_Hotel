import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DrawerIcon(),
        automaticallyImplyLeading: false,
        title: Text('Sobre Nosotros'),
      ),
      drawer: myDrawer(),
      body: Center(
        child: Text(
          'Acerca de nosotros...',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}