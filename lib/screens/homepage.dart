import 'package:flutter/material.dart';
import 'package:gs_edu/screens/Settings.dart';
import 'package:gs_edu/widgets/class_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(children: [ClassCard(), Settings()]),
    );
  }
}
