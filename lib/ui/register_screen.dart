import 'package:easy_hotel/ui/password_recovery_screen.dart';
import 'package:easy_hotel/ui/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/auth_bloc.dart';
import '../events/auth_event.dart';
import '../utils/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {

    final TextEditingController usernameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(top: 25.0),
              child: const Center(
                child: Text(
                  'Registro',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              width: 150,
              height: 150,
              child: Image.asset('assets/logotipo.png'),
            ),
            Container(
              width: 350,
              height: 600,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 10),
                  ),
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(10, 0),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  //input de usuario
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 300,
                    child: TextField(
                      controller: usernameController,
                      decoration: const InputDecoration(
                        labelText: 'Usuario',
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  //input de email
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    width: 300,
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: 'Correo electrónico',
                        filled: true,
                        fillColor: Colors.transparent,
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),

                  //input de password
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: passwordController,
                      decoration: const InputDecoration(
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
                  const SizedBox(
                    height: 40,
                  ),

                  //input de confirmar password
                  Container(
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: TextField(
                      controller: confirmPasswordController,
                      decoration: const InputDecoration(
                        fillColor: Colors.transparent,
                        labelText: 'Confirmar contraseña',
                        filled: true,
                        border: InputBorder.none,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        prefixIcon: Icon(Icons.lock),
                      ),
                      obscureText: true,
                    ),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Container(
                    width: 200,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Constants.getColor('azul'),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextButton(
                      onPressed: () async {
                        // Obtener el valor de los campos de entrada
                        String username = usernameController.text;
                        String email = emailController.text;
                        String password = passwordController.text;
                        String confirmPassword = confirmPasswordController.text;

                        // Verificar que las contraseñas coincidan
                        if (password != confirmPassword) {
                          // Mostrar un mensaje de error si las contraseñas no coinciden
                          return;
                        }

                        try {
                          // Crear un nuevo usuario con correo electrónico y contraseña
                          await FirebaseAuth.instance.createUserWithEmailAndPassword(
                            email: email,
                            password: password,
                          );
                        } catch (e) {
                          // Manejar el error de autenticación
                          print(e);
                        }
                      },
                      child: const Text(
                        'Registrarse',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
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
