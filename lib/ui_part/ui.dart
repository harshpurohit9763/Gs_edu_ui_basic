import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

final BoxDecoration1 = BoxDecoration(
    color: Color.fromARGB(255, 144, 224, 239),
    // image: const DecorationImage(
    //     image: AssetImage('assets/background.jpeg'), fit: BoxFit.cover),
    border: Border.all(
      width: 2,
      color: Colors.greenAccent,
    ),
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5.0,
      ),
    ]);

final BoxDecoration2 = BoxDecoration(
    color: Color.fromARGB(255, 202, 240, 248),
    // image: const DecorationImage(
    //     image: AssetImage('assets/background.jpeg'), fit: BoxFit.cover),
    border: Border.all(width: 2, color: Colors.lightBlueAccent),
    borderRadius: BorderRadius.circular(20),
    boxShadow: const [
      BoxShadow(
        color: Colors.lightBlue,
        blurRadius: 5.0,
      ),
    ]);
final textInputDecoration = BoxDecoration(
    color: Colors.white, border: Border.all(width: 2, color: Colors.grey));
const ClassName =
    TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold);
const ClassProfName =
    TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold);

const ClassProfNameSub =
    TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold);
const Discription =
    TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold);
