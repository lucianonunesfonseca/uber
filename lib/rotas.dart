

import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:uber/telas/PainelMotorista.dart';
import 'package:uber/telas/PainelPassageiro.dart';
import 'package:uber/telas/cadastro.dart';
import 'package:uber/telas/home.dart';

class Rotas{
  static Route<dynamic> gerarRota(RouteSettings settings){
    switch(settings.name){
      case "/":
        return MaterialPageRoute(
            builder: (_) => Home(),
        );
      case "/cadastro":
        return MaterialPageRoute(
          builder: (_) => Cadastro(),
        );
      case "/painel-passageiro":
        return MaterialPageRoute(
          builder: (_) => PainelPassageiro(),
        );
      case "/painel-motorista":
        return MaterialPageRoute(
          builder: (_) => PainelMotorista(),
        );
        default:
          _erroRota();
    }
  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
        builder: (_){
          return Scaffold(
            appBar: AppBar(
              title: Text("Tela Não encontrado"),
            ),
            body: Center(
              child: Text(
                  "Tela Não encontrado",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
        );
  }
}