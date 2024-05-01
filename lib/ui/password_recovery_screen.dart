import 'package:flutter/material.dart';

class PasswordRecoveryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recuperación de Contraseña'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Recuperación de Contraseña',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),

          ],
        ),
      ),
    );
  }
}