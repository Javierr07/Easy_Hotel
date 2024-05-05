import '../states/hotel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'blocs/data.dart'
class Room {
  final String imageUrl;
  final String title;
  final String description;

  Room({
    required this.imageUrl,
    required this.title,
    required this.description,
  });
}




List<Room> Economico = [
  Room(
    imageUrl: _firestore.imageUrl,
    title: _firestore.title,
    description: _firestore.description,
  ),
 
];

List<Room> Estandar = [
  Room(
    imageUrl: 'assets/prueba.png',
    title: 'Majestic Inn',
    description: 'Descubre la grandeza de una estancia majestuosa en nuestro hotel, donde la arquitectura impresionante y el servicio excepcional se unen para crear una experiencia verdaderamente inolvidable.',
  ),
 
];

List<Room> Lujo = [
  Room(
    imageUrl: 'assets/prueba.png',
    title: 'Azure Horizon Resort',
    description: 'Descubre un paraíso de opulencia frente al mar, donde la atención personalizada y las instalaciones exclusivas te transportarán a un mundo de placer y confort.',
  ),

];

final List<Hotel> hotels = [
  Hotel(
    title: 'Habitacion sencilla',
    description: 'Habitacion economica con acceso a comodidades basicas, servicios extra se pagan por separado.',
    imageUrl: 'assets/prueba.png',
  ),
  Hotel(
    title: 'Habitacion doble',
    description: 'Habitacion con acomodacion doble con acomodacion sencilla, servicios extra se pagan por separado.',
    imageUrl: 'assets/prueba.png',
  ),

];