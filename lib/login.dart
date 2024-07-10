import 'package:flutter/material.dart';

class login extends StatefulWidget {
  login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  @override
  void dispose() { 
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  final key = GlobalKey<FormState>();

 Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio de Sesión'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: key,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Correo Electrónico',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Contraseña',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Aquí puedes agregar la lógica de inicio de sesión
                  String email = emailController.text;
                  String password = passwordController.text;
                  print('Correo: $email, Contraseña: $password');
                },
                child: Text('Ingresar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

    void _signUp() async{
    String email = emailController.text;
    String password = passwordController.text;
    print('Correo: $email, Contraseña: $password');

  }
}

