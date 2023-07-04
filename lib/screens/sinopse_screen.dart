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
      body: SingleChildScrollView(
        child: Column(
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
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                livro["nome"],
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
              child: Text(
                livro["autor"],
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              textDirection: TextDirection.ltr,
              children: [
                Padding(padding: EdgeInsets.fromLTRB(10, 10, 0, 10)),
                Title(
                    color: Colors.black,
                    child: Text(
                      "Sinopse:",
                      style: TextStyle(fontSize: 16),
                      textAlign: TextAlign.left,
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 20, 0, 0),
              child: Text(
                livro["sinopse"],
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.left,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
