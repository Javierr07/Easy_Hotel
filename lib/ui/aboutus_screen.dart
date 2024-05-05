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
      body: Center(
        child: Container(
          width: 350,
          height: 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 10),
              ),
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(10, 0),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sobre Nosotros',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
              const SizedBox(height: 16),
              Text(
                'Descubre tu próximo destino con nuestra aplicación dedicada a encontrar hoteles perfectos para ti. Explora una amplia selección de opciones de alojamiento en todo el mundo, desde lujosos resorts hasta acogedores bed and breakfasts. Con fotos detalladas, descripciones completas y reseñas honestas de otros viajeros, planificar tu escapada nunca ha sido tan fácil. Encuentra el lugar ideal que se adapte a tus necesidades y presupuesto, y reserva tu estadía con confianza, todo desde la comodidad de tu dispositivo móvil.',
              ),
            ],
          ),
        ),
      ),
    );
  }

}