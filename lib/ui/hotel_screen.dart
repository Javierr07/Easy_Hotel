import 'package:flutter/material.dart';

import '../blocs/data.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  // Lista de hoteles de ejemplo

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotel'),
      ),
      body: Column(
        children: [
          Container(
            height: 100, 
            color: const Color.fromARGB(255, 112, 191, 255), //
            child: const Center(
              child: Text(
                'HABITACIONES',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: hotels.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Image.network(
                        hotels[index].imageUrl,
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                      ),
                      ListTile(
                        title: Text(hotels[index].title),
                        subtitle: Text(hotels[index].description),
                        trailing: ElevatedButton(
                          onPressed: () {
                            // Acción al presionar el botón de reservar
                          },
                          child: const Text('Reservar'),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
