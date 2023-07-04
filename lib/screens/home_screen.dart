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
      "capa": "assets/img2.jpg",
      "sinopse":
          """Aos 35 anos, Nora Seed é uma mulher cheia de talentos e poucas conquistas. Arrependida das escolhas que fez no passado, ela vive se perguntando o que poderia ter acontecido caso tivesse vivido de maneira diferente. Após ser demitida e seu gato ser atropelado, Nora vê pouco sentido em sua existência e decide colocar um ponto final em tudo. Porém, quando se vê na Biblioteca da Meia-Noite, Nora ganha uma oportunidade única de viver todas as vidas que poderia ter vivido.

      Neste lugar entre a vida e a morte, e graças à ajuda de uma velha amiga, Nora pode, finalmente, se mudar para a Austrália, reatar relacionamentos antigos – ou começar outros –, ser uma estrela do rock, uma glaciologista, uma nadadora olímpica... enfim, as opções são infinitas. Mas será que alguma dessas outras vidas é realmente melhor do que a que ela já tem?

      Em A Biblioteca da Meia-Noite, Nora Seed se vê exatamente na situação pela qual todos gostaríamos de poder passar: voltar no tempo e desfazer algo de que nos arrependemos. Diante dessa possibilidade, Nora faz um mergulho interior viajando pelos livros da Biblioteca da Meia-Noite até entender o que é verdadeiramente importante na vida e o que faz, de fato, com que ela valha a pena ser vivida."""
    },
    {
      "nome": "As coisas que você só vê quando desacelera",
      "autor": "Haemin Sunim",
      "capa": "assets/img3.jpg",
      "sinopse":
          """De tempos em tempos, surge um livro que, com sua maneira original de iluminar importantes temas espirituais, se torna um fenômeno tão grande em seu país de origem que acaba chamando a atenção e encantando leitores de todo o mundo.

      Escrito pelo mestre zen-budista sul-coreano Haemin Sunim, As coisas que você só vê quando desacelera é um desses raros e tão necessários livros para quem deseja tranquilizar os pensamentos e cultivar a calma e a autocompaixão.

      Ilustrado com extrema delicadeza, ele nos ajuda a entender nossos relacionamentos, nosso trabalho, nossas aspirações e nossa espiritualidade sob um novo prisma, revelando como a prática da atenção plena pode transformar nosso modo de ser e de lidar com tudo o que fazemos.

      Você vai descobrir que a forma como percebemos o mundo é um reflexo do que se passa em nossa mente. Quando nossa mente está alegre e compassiva, o mundo também está. Quando ela está repleta de pensamentos negativos, o mundo parece sombrio. E quando nossa mente descansa, o mundo faz o mesmo."""
    },
    {
      "nome": "O lado feio do amor",
      "autor": "Colleen Hoover",
      "capa": "assets/img4.jpg",
      "sinopse":
          """Quando Tate Collins se muda para o apartamento do irmão, em São Francisco, pronta a se dedicar ao mestrado em enfermagem, não imagina estar prestes a conhecer o lado feio do amor. Um relacionamento em que companheirismo e cumplicidade não são prioridades. E o sexo parece ser o único objetivo.

      Mas Miles Archer, piloto de avião, vizinho e melhor amigo de Corbin Collins, sabe ser persuasivo. E muito. Apesar de reservado, e da armadura emocional que carrega para não deixar estranhos se aproximarem e descobrirem nada a seu respeito, ele instantaneamente seduz Tate com seu jeito misterioso e físico perfeito. Mas sua beleza esconde um passado repleto de dor.

      O que os dois sentem não é amor à primeira vista, mas uma atração incontrolável. Em pouco tempo não conseguem mais resistir e se entregam ao desejo. Miles, no entanto, se recusa a abaixar as barreiras que construiu em volta de si mesmo e impõe duas regras: sem perguntas sobre o passado e sem esperanças para o futuro. Será apenas uma relação casual e nada mais; nenhum dos dois quer se envolver.

      Eles têm a sintonia perfeita. Quando estão juntos, Tate se entrega sem pensar nas consequências, no que seu irmão faria se descobrisse aquele romance proibido acontecendo embaixo de seu nariz. Mas a verdade é que ela não pode resistir a Miles. E quando se dá conta, já ultrapassou todos os limites... Tate prometeu não se apaixonar. Mas vai descobrir que nenhuma regra é capaz de controlar o amor e o desejo."""
    },
    {
      "nome": "Daisy Jones & the Six",
      "autor": "Taylor Jenkins Reid",
      "capa": "assets/img5.jpg",
      "sinopse":
          """Todo mundo conhece Daisy Jones & The Six. Nos anos setenta, dominavam as paradas de sucesso, faziam shows para plateias lotadas e conquistavam milhões de fãs. Eram a voz de uma geração, e Daisy, a inspiração de toda garota descolada. Mas no dia 12 de julho de 1979, no último show da turnê Aurora, eles se separaram. E ninguém nunca soube por quê. Até agora.
      
      Esta é história de uma menina de Los Angeles que sonhava em ser uma estrela do rock e de uma banda que também almejava seu lugar ao sol. E de tudo o que aconteceu — o sexo, as drogas, os conflitos e os dramas — quando um produtor apostou (certo!) que juntos poderiam se tornar lendas da música.
      Neste romance inesquecível narrado a partir de entrevistas, Taylor Jenkins Reid reconstitui a trajetória de uma banda fictícia com a intensidade presente nos melhores backstages do rock'n'roll."""
    },
    {
      "nome": "A garota do lago",
      "autor": "Charlie Donlea",
      "capa": "assets/img6.jpg",
      "sinopse":
          """Summit Lake, uma pequena cidade entre montanhas, é esse tipo de lugar, bucólico e com encantadoras casas dispostas à beira de um longo trecho de água intocada.Duas semanas atrás, a estudante de direito Becca Eckersley foi brutalmente assassinada em uma dessas casas. Filha de um poderoso advogado, Becca estava no auge de sua vida. Atraída instintivamente pela notícia, a repórter Kelsey Castle vai até a cidade para investigar o caso. ...E LOGO SE ESTABELECE UMA CONEXÃO ÍNTIMA QUANDO UM VIVO CAMINHA NAS MESMAS PEGADAS DOS MORTOS...E enquanto descobre sobre as amizades de Becca, sua vida amorosa e os segredos que ela guardava, a repórter fica cada vez mais convencida de que a verdade sobre o que aconteceu com Becca pode ser a chave para superar as marcas sombrias de seu próprio passado."""
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
