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
          //title: Text(livro["nome"]),
          ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Image.asset(
                livro["capa"],
                fit: BoxFit.contain,
                height: 350,
                width: 300,
              ),
            ),
          ),
          Text(
            livro["nome"],
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              livro["sinopse"],
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
