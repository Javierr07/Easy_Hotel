

import 'package:easy_hotel/ui/password_recovery_screen.dart';
import 'package:easy_hotel/ui/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import '../utils/constants.dart';
import 'home_screen.dart';


class LoginScreen extends StatefulWidget {

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    // Aquí construyes la interfaz de usuario utilizando widgets de Flutter

    return Scaffold(
      backgroundColor: Constants.getColor('verde'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Center(
                child: Text(
                  'Bienvenido',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              width: 150,
              height: 150,
              child: Image.asset('assets/logotipo.png'),
            ),

            Container(
              width: 350,
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 10), // Cambiar el valor de '3' para ajustar el desplazamiento en Y
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(10, 0), // Cambiar el valor de '3' para ajustar el desplazamiento en X
                  ),
                ],
              ),
              child: Column(
                children: [
                  SizedBox(height: 40),
                  //input de usuario
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 300,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),

                  SizedBox(height: 40,),


                  //input de password
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: Colors.transparent,
                        labelText: 'Contraseña',
                        filled: true,
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 10,),


                  GestureDetector(
                    onTap: () {
                      // Navega a la pantalla de recuperación de contraseña al hacer clic en el texto
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PasswordRecoveryScreen()),
                      );
                    },

                      child: Text(
                        'Olvidé mi contraseña',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),

                  ),

                  SizedBox(height: 30,),

                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Constants.getColor('azul'),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                        // Acción a realizar cuando se presione el botón
                      },
                      child: Text(
                        'Acceder',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 10,),

                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterScreen()),
                      );
                    },
                      child: Text(
                        'Registrarse',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
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