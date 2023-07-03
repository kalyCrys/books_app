import 'dart:html';

import 'package:flutter/material.dart';

class SinopseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // TODO: implement build
    var livro = ModalRoute.of(context)!.settings.arguments as Map;
    // print(ModalRoute.of(context)!.settings.arguments);
    // if (ModalRoute.of(context)!.settings.arguments == null) Future.delayed(Duration(milliseconds: 200), () => Navigator.of(context).pushNamed('/'));
    return Scaffold(
        appBar: AppBar(
      title: Text(livro["nome"]),

      
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(livro["sinopse"], style: TextStyle(fontSize: 16),),
    ) ,)
    ;
  }
}
