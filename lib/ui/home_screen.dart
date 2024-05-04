import 'package:easy_hotel/ui/menu.dart';
import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:easy_hotel/ui/widgets/hotel_card.dart';
import 'package:easy_hotel/ui/widgets/promotioncard_screen.dart';
import 'package:easy_hotel/ui/widgets/services_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const DrawerIcon(),
      ),
      drawer: const myDrawer(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Sección de promociones destacadas
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promociones Destacadas',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  PromotionCard(
                    title: 'Oferta Especial',
                    description:
                        '¡Reserva 3 noches y obtén un 20% de descuento!',
                    imageUrl: 'assets/prueba.png',
                  ),
                  SizedBox(height: 10.0),
                  PromotionCard(
                    title: 'Descuento de Fin de Semana',
                    description:
                        '¡Aprovecha nuestro descuento del 15% para estancias de fin de semana!',
                    imageUrl: 'assets/prueba.png',
                  ),
                ],
              ),
            ),
            // Sección de hoteles destacados
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hoteles Destacados',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  HotelCard(
                    name: 'PennySaver Lodge',
                    imageUrl: 'assets/prueba.png',
                  ),
                  SizedBox(height: 10.0),
                  HotelCard(
                    name: 'Majestic Inn',
                    imageUrl: 'assets/prueba.png',
                  ),
                ],
              ),
            ),
            // Sección de servicios adicionales
            Container(
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Servicios Adicionales',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10.0),
                  ServiceCard(
                    name: 'Desayuno Buffet',
                    description:
                        'Disfruta de nuestro delicioso desayuno buffet todas las mañanas.',
                    icon: Icons.free_breakfast,
                  ),
                  SizedBox(height: 10.0),
                  ServiceCard(
                    name: 'Piscina',
                    description:
                        'Relájate en nuestra amplia piscina al aire libre.',
                    icon: Icons.pool,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
