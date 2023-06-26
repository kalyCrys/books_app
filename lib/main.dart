import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Books'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
      
        title: Text(widget.title),
      ),
      body: GridView.count(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisCount: 2,
          childAspectRatio: 9/16,
          children: <Widget>[

            Column(
              children: [
                Container(child:Image.asset('assets/img1.jpg', fit: BoxFit.cover,)),
                Text("É assim que começa", style: PrimaryTitle,),
                Text("Colleen Hoover", style: subtitleStyle,),
              ],
            ),
           
    
            Column(
              children: [
                Image.asset('assets/img2.jpg', fit: BoxFit.cover,),
                Text("A biblioteca da meia-noite", style: PrimaryTitle,),
                Text("Matt Haig", style: subtitleStyle,),
              ],
            ),
            
            
            Column(
              children: [
                Image.asset('assets/img3.jpg',fit: BoxFit.cover),
                Text("As coisas que você só vê quando desacelera", style: PrimaryTitle,),
                Text("Haemin Sunim", style: subtitleStyle,),
              ],
            ),
            
            
            Column(
              children: [
                Image.asset('assets/img4.jpg', fit: BoxFit.cover),
                Text("O lado feio do amor", style: PrimaryTitle,),
                Text("Colleen Hoover", style: subtitleStyle,),
              ],
            ),
            
            
            Column(
              children: [
                Image.asset('assets/img5.jpg', fit: BoxFit.cover),
                Text("Daisy Jones & the six", style: PrimaryTitle,),
                Text("Taylor Jenkins Reid", style: subtitleStyle,),
              ],
            ),
            

            Column(
              children: [
                Image.asset('assets/img6.jpg', fit: BoxFit.cover),
                 Text("É assim que começa", style: PrimaryTitle,),
                Text("Colleen Hoover", style: subtitleStyle,),
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
