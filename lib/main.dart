import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gs_edu/screens/Authentication/authenticate.dart';
import 'package:gs_edu/screens/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(HomeInitilizer());
}

class HomeInitilizer extends StatefulWidget {
  const HomeInitilizer({super.key});

  @override
  State<HomeInitilizer> createState() => _HomeInitilizerState();
}

class _HomeInitilizerState extends State<HomeInitilizer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Authenticate(),
    );
  }
}
