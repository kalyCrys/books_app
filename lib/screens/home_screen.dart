import 'package:books_app/screens/sinopse_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  //const MyWidget({super.key});
  List livros = [
    {
      "nome": "É assim que começa",
      "autor": "Colleen Hoover",
      "capa": "assets/img1.jpg",
      "sinopse": """
          Lily Bloom continua administrando uma floricultura. Seu ex-marido abusivo, Ryle Kincaid, ainda é um    cirurgião. Mas agora os dois estão oficialmente divorciados e dividem a guarda da filha, Emerson.
          Quando Lily esbarra em Atlas ― com quem não fala há quase dois anos ―, parece que finalmente chegou o momento de retomar o relacionamento da adolescência, já que ele também está solteiro e parece retribuir os sentimentos de Lily. Mas apesar de divorciada, Lily não está exatamente livre de Ryle. Culpando Atlas pelo fim de seu casamento, Ryle não está nada disposto a aceitar o novo relacionamento de Lily, ainda mais com Atlas, o último homem que aceitaria ver perto de sua filha e da ex-esposa.  Alternando entre os pontos de vista de Atlas e Lily, É assim que começa retoma logo após o epílogo de É assim que acaba. Revelando mais sobre o passado de Atlas e acompanhando a jornada de Lily para abraçar a sua segunda chance, no amor enquanto lida com um ex-marido ciumento, É assim que começa prova que ninguém entrega uma leitura mais emocionante do que Colleen Hoover.
"""
    },
    {
      "nome": "A biblioteca da meia-noite",
      "autor": "Matt Halg",
      "capa": "assets/img2.jpg"
    },
    {
      "nome": "As coisas que você só vê quando desacelera",
      "autor": "Haemin Sunim",
      "capa": "assets/img3.jpg"
    },
    {
      "nome": "O lado feio do amor",
      "autor": "Colleen Hoover",
      "capa": "assets/img4.jpg"
    },
    {
      "nome": "Daisy Jones & the Six",
      "autor": "Taylor Jenkins Reid",
      "capa": "assets/img5.jpg"
    },
    {
      "nome": "A garota do lago",
      "autor": "Charlie Donlea",
      "capa": "assets/img6.jpg"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meus Livros'),
      ),

      body: GridView.builder(
          itemCount: livros.length,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            childAspectRatio: 9 / 17,
            crossAxisSpacing: 15,
          ),
          padding: const EdgeInsets.all(15),
          // crossAxisCount: 2,
          // mainAxisSpacing: 10,
          // childAspectRatio: 9 / 17,
          // crossAxisSpacing: 15,
          itemBuilder: ((context, index) {
            var livro = livros[index];
            return Column(
              children: [
                InkWell(
                  onTap: () {
                    //MaterialPageRoute('sinopseScreen'),
                    Navigator.of(context)
                        .pushNamed('/sinopseScreen', arguments: livro);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => SinopseScreen()));
                  },
                  child: Container(
                      child: Image.asset(
                    livro["capa"],
                    fit: BoxFit.cover,
                    height: 350,
                    width: 300,
                  )),
                ),
                Padding(padding: EdgeInsetsDirectional.only(top: 5)),
                Text(
                  livro["nome"],
                  style: PrimaryTitle,
                  maxLines: 2,
                ),
                Text(
                  livro["autor"],
                  style: subtitleStyle,
                ),
              ],
            );
          })),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  TextStyle subtitleStyle = TextStyle(fontSize: 12, color: Colors.grey);
  TextStyle PrimaryTitle = TextStyle(fontSize: 18, color: Colors.black);
}
