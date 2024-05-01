import 'package:flutter/material.dart';

class Constants {
  // Definir un mapa de colores con nombres descriptivos
  static final Map<String, Color> colors = {
    'azul': Color(0xFF4BBCF4),
    'verde': Color(0xFF61C0BF),
    'verdepalido': Color(0xFFBBDED6),
    'rosa': Color(0xFFFFB6B9),
    'beige': Color(0xFFFAE3D9),
    // Puedes agregar más colores con nombres descriptivos aquí
  };

  // Método para obtener un color por su nombre
  static Color getColor(String name) {
    return colors[name] ?? Colors.black; // Devuelve el color correspondiente o negro si no se encuentra
  }
}