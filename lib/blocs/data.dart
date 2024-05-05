import '../states/hotel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

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

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _collection = _firestore.collection('hotelEconomico');

String roomImageUrl = '';
String roomTitle = '';
String roomDescription = '';
String roomImageUrl1 = '';
String roomTitle1 = '';
String roomDescription1 = '';

Future<void> fetchRoomData() async {
  DocumentSnapshot snapshot = await _collection.doc('hotelParadise').get();
  Map<String, dynamic>? data = snapshot.data() as Map<String, dynamic>?;

  if (data != null) {
    roomImageUrl = data['Imagen'] ?? '';
    roomTitle = data['Nombre'] ?? '';
    roomDescription = data['Descripcion'] ?? '';
    roomImageUrl1 = data['Imagen1'] ?? '';
    roomTitle1 = data['Nombre1'] ?? '';
    roomDescription1 = data['Descripcion1'] ?? '';
  }
}

List<Room> Economico = [
  Room(
    imageUrl: roomImageUrl,
    title: roomTitle,
    description: roomDescription,
  ),
  Room(
    imageUrl: roomImageUrl1,
    title: roomTitle1,
    description: roomDescription1,
  ),
];

final FirebaseFirestore _firestore1 = FirebaseFirestore.instance;
final CollectionReference _collection1 = _firestore1.collection('hotelEstandar');

String roomImageUrl2 = '';
String roomTitle2 = '';
String roomDescription2 = '';
String roomImageUrl3 = '';
String roomTitle3 = '';
String roomDescription3 = '';

Future<void> fetchRoomData1() async {
  DocumentSnapshot snapshot = await _collection1.doc('gardeniaInn').get();
  Map<String, dynamic>? data1 = snapshot.data() as Map<String, dynamic>?;

  if (data1 != null) {
    roomImageUrl2 = data1['Imagen'] ?? '';
    roomTitle2 = data1['Nombre'] ?? '';
    roomDescription2 = data1['Descripcion'] ?? '';
    roomImageUrl3 = data1['Imagen1'] ?? '';
    roomTitle3 = data1['Nombre1'] ?? '';
    roomDescription3 = data1['Descripcion1'] ?? '';
  }
}

List<Room> Estandar = [
  Room(
    imageUrl:roomImageUrl2,
    title: roomTitle2,
    description: roomDescription2  ),
  Room(
    imageUrl: roomImageUrl3,
    title: roomTitle3,
    description:  roomDescription3  ),
];


final FirebaseFirestore _firestore2 = FirebaseFirestore.instance;
final CollectionReference _collection2 = _firestore2.collection('hotelLujo');

String roomImageUrl4 = '';
String roomTitle4 = '';
String roomDescription4 = '';
String roomImageUrl5 = '';
String roomTitle5 = '';
String roomDescription5 = '';

Future<void> fetchRoomData2() async {
  DocumentSnapshot snapshot = await _collection2.doc('hotelBarcelo').get();
  Map<String, dynamic>? data2 = snapshot.data() as Map<String, dynamic>?;

  if (data2 != null) {
    roomImageUrl4 = data2['Imagen'] ?? '';
    roomTitle4 = data2['Nombre'] ?? '';
    roomDescription4 = data2['Descripcion'] ?? '';
    roomImageUrl5 = data2['Imagen1'] ?? '';
    roomTitle5 = data2['Nombre1'] ?? '';
    roomDescription5 = data2['Descripcion1'] ?? '';
  }
}


List<Room> Lujo = [
 Room(
    imageUrl:roomImageUrl4,
    title: roomTitle4,
    description: roomDescription4  ),
  Room(
    imageUrl: roomImageUrl5,
    title: roomTitle5,
    description:  roomDescription5  ),
];

class Nombre {
  String _nombre = '';
  String get asignar => _nombre;
  set nombre(String value) {
    _nombre = value;
  }
}


final FirebaseFirestore dbRoom = FirebaseFirestore.instance;
final CollectionReference col = _firestore.collection('habitaciones');

String roomImage = '';
String title = '';
String description = '';
String roomImage1 = '';
String title1 = '';
String description1 = '';

Future<void> fetchSPData() async {
  DocumentSnapshot snapshot = await col.doc('hotelBarcelo').get();
  Map<String, dynamic>? data3 = snapshot.data() as Map<String, dynamic>?;

  if (data3 != null) {
    roomImage = data3['imagen'] ?? '';
    title = data3['nombre'] ?? '';
    description = data3['descripcion'] ?? '';
    roomImage1 = data3['imagen1'] ?? '';
    title1 = data3['nombre1'] ?? '';
    description1 = data3['descripcion1'] ?? '';
  }
}




final List<Hotel> hotels = [
  Hotel(
    title: title,
    description: description,
    imageUrl: roomImage, roomCard: null,
  ),
  Hotel(
    title: title1,
    description: description1,
    imageUrl: roomImage1, roomCard: null,
  ),
];