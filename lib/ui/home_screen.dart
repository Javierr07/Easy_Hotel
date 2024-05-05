import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_hotel/ui/menu.dart';
import 'package:easy_hotel/ui/widgets/drawer_icon.dart';
import 'package:easy_hotel/ui/widgets/hotel_card.dart';
import 'package:easy_hotel/ui/widgets/promotioncard_screen.dart';
import 'package:easy_hotel/ui/widgets/services_card.dart';
import 'package:flutter/material.dart';

final FirebaseFirestore datas = FirebaseFirestore.instance;
final CollectionReference _collection = FirebaseFirestore.instance.collection('Promociones');

String promImageUrl = '';
String promTitle = '';
String promDescription = '';
String promImageUrl1 = '';
String promTitle1 = '';
String promDescription1 = '';

Future<void> fetchData() async {
  DocumentSnapshot snapshot = await _collection.doc('Promociones').get();
  Map<String, dynamic>? datas = snapshot.data() as Map<String, dynamic>?;

  if (datas != null) {
    promImageUrl = datas['Imagen'] ?? '';
    promTitle = datas['Nombre'] ?? '';
    promDescription = datas['Descripcion'] ?? '';
    promImageUrl1 = datas['Imagen1'] ?? '';
    promTitle1 = datas['Nombre1'] ?? '';
    promDescription1 = datas['Descripcion1'] ?? '';
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const DrawerIcon(),
      ),
      drawer: const Drawer(child: myDrawer()),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            // Sección de hoteles destacados
            Container(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hoteles Destacados',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10.0),
                  HotelCard(
                    name: promTitle,
                    imageUrl: promImageUrl,
                  ),
                  const SizedBox(height: 10.0),
                  HotelCard(
                    name: promTitle1,
                    imageUrl: promImageUrl1,
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