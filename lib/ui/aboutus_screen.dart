import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:flutter/material.dart';

import 'menu.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const DrawerIcon(),
        automaticallyImplyLeading: false,
        title: const Text('Sobre Nosotros'),
      ),
      drawer: const myDrawer(),
      body: const Center(
        child: Text(
          'Acerca de nosotros...',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
