import 'package:flutter/material.dart';
import 'package:login_firebase/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:login_firebase/firebase_options.dart';

void main() async {
  // Inicializa Firebase
  WidgetsFlutterBinding.ensureInitialized(); 
  await Firebase.initializeApp( 
    options: DefaultFirebaseOptions.currentPlatform, 
  );
runApp(const loginKris());
} 

class loginKris extends StatelessWidget {
  const loginKris({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: login()
    );
  }
}