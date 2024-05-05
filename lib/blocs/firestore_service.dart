class FirestoreService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Room>> getRoomsFromFirestore(String collectionName) async {
    List<Room> rooms = [];

    try {
      QuerySnapshot querySnapshot = await _firestore.collection("hotelEconomico").doc("hotelParadise").get();

      for (QueryDocumentSnapshot doc in querySnapshot.docs) {
        rooms.add(Room(
          imageUrl: doc['Imagen'],
          title: doc['Nombre'],
          description: doc['Descripcionb'],
        ));
      }
    } catch (e) {
      print('Error getting rooms: $e');
    }

    return rooms;
  }
}
