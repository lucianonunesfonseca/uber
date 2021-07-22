import 'package:flutter/material.dart';
import 'package:uber/rotas.dart';
import 'package:uber/telas/home.dart';


final ThemeData temaPadrao = ThemeData(
  primaryColor: Color(0xff37474f),
  accentColor: Color(0xff546e7a)
);

void main() => runApp(
  MaterialApp(
      title: 'Uber',
      debugShowCheckedModeBanner: false,
      home:Home(),
      theme: temaPadrao,
      initialRoute: "/",
      onGenerateRoute: Rotas.gerarRota,
  ));



