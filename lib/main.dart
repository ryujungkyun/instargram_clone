import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:instargram_clone/firebase_options.dart';
import 'package:instargram_clone/screens/singup_screen.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData.dark(),
    );
  }
} 


class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SignupScreen();
  }
}
