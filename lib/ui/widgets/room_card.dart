import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../blocs/data.dart';
import '../hotel_screen.dart';

class RoomCard extends StatelessWidget {
  final Room room;

  const RoomCard({required this.room});

  String? get imageUrl => room.imageUrl;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            imageUrl!,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  room.title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4.0),
                Text(room.description),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HotelScreen()),
                    );
                  },
                  child: Text('Visitar hotel'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}