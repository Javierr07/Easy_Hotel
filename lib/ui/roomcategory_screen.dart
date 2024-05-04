import 'package:easy_hotel/ui/widgets/room_card.dart';
import 'package:flutter/material.dart';

import '../blocs/data.dart';

class RoomCategoryPage extends StatelessWidget {
  final String category;
  final List<Room> rooms;

  const RoomCategoryPage({
    required this.category,
    required this.rooms,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: rooms.length,
        itemBuilder: (context, index) {
          return RoomCard(room: rooms[index]);
        },
      ),
    );
  }
}
