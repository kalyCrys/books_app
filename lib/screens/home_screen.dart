import 'package:books_app/screens/sinopse_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  //const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('home_screen'),
      ),

      body: GridView.count(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        padding: const EdgeInsets.all(15),
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: 9 / 16,
        crossAxisSpacing: 15,
        children: <Widget>[
          Column(
            children: [
              InkWell(
                onTap: () {
                  //MaterialPageRoute('sinopseScreen'),
                  Navigator.of(context).pushNamed('/sinopseScreen');
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SinopseScreen()));
                },
                child: Container(
                    child: Image.asset(
                  'assets/img1.jpg',
                  fit: BoxFit.cover,
                  height: 350,
                  width: 300,
                )),
              ),
              Padding(padding: EdgeInsetsDirectional.only(top: 5)),
              Text(
                "É assim que começa",
                style: PrimaryTitle,
                maxLines: 1,
              ),
              Text(
                "Colleen Hoover",
                style: subtitleStyle,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  child: Image.asset(
                'assets/img2.jpg',
                fit: BoxFit.cover,
                height: 350,
                width: 300,
              )),
              Padding(padding: EdgeInsetsDirectional.only(top: 5)),
              Text(
                "A biblioteca da meia-noite",
                style: PrimaryTitle,
                //maxLines: 1,
              ),
              Text(
                "Matt Haig",
                style: subtitleStyle,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  child: Image.asset(
                'assets/img3.jpg',
                fit: BoxFit.cover,
                height: 350,
                width: 300,
              )),
              Padding(padding: EdgeInsetsDirectional.only(top: 5)),
              Text(
                "As coisas que você só vê quando desacelera",
                style: PrimaryTitle,
                maxLines: 1,
              ),
              Text(
                "Haemin Sunim",
                style: subtitleStyle,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  child: Image.asset(
                'assets/img4.jpg',
                fit: BoxFit.cover,
                height: 350,
                width: 300,
              )),
              Padding(padding: EdgeInsetsDirectional.only(top: 5)),
              Text(
                "O lado feio do amor",
                style: PrimaryTitle,
                maxLines: 1,
              ),
              Text(
                "Colleen Hoover",
                style: subtitleStyle,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  child: Image.asset(
                'assets/img5.jpg',
                fit: BoxFit.cover,
                height: 350,
                width: 300,
              )),
              Padding(padding: EdgeInsetsDirectional.only(top: 5)),
              Text(
                "Daisy Jones & the six",
                style: PrimaryTitle,
                maxLines: 1,
              ),
              Text(
                "Taylor Jenkins Reid",
                style: subtitleStyle,
              ),
            ],
          ),
          Column(
            children: [
              Container(
                  child: Image.asset(
                'assets/img6.jpg',
                fit: BoxFit.cover,
                height: 350,
                width: 300,
              )),
              Padding(padding: EdgeInsetsDirectional.only(top: 5)),
              Text(
                "É assim que começa",
                style: PrimaryTitle,
                maxLines: 1,
              ),
              Text(
                "Colleen Hoover",
                style: subtitleStyle,
              ),
            ],
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  TextStyle subtitleStyle = TextStyle(fontSize: 15, color: Colors.grey);
  TextStyle PrimaryTitle = TextStyle(fontSize: 20, color: Colors.black);
}
