import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:mercado/screens/confirmacao_screen.dart';
import 'package:mercado/screens/home_screen.dart';
import 'package:mercado/screens/registrar.dart';
import 'package:mercado/screens/tela_inicial.dart';
import 'package:mercado/tabs/home_tab.dart';


void main() {
  runApp(MyApp());

//  Firestore.instance.collection("col").document("doc").setData({"texto": "david"});
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Compras",
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      debugShowCheckedModeBanner: false,
      home: HomeTab(),
    );
  }
}