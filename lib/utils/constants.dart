import 'package:flutter/material.dart';

class Constants {
  // Mapa de colores con nombres descriptivos
  static final Map<String, Color> colors = {
    'azul': const Color(0xFF4BBCF4),
    'verde': const Color(0xFF61C0BF),
    'verdepalido': const Color(0xFFBBDED6),
    'rosa': const Color(0xFFFFB6B9),
    'beige': const Color.fromARGB(255, 255, 244, 239),
    
  };

  static Color getColor(String name) {
    return colors[name] ??
        Colors
            .black; // Devuelve el color correspondiente o negro si no se encuentra
  }
}
