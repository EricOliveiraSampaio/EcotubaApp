import 'package:flutter/material.dart';
import 'package:teste/barco.dart';
import 'package:teste/cachoeirismo.dart';
import 'package:teste/canoagem.dart';
import 'package:teste/ciclismo.dart';
import 'package:teste/mergulhador.dart';
import 'package:teste/segundapag.dart';

void main() {
  runApp(const EcotubaApp());
}

class EcotubaApp extends StatelessWidget {
  const EcotubaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'imagens/FundoInicial.png', // Certifique-se de que a imagem está na pasta correta
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Mergulhador()));}, icon: const Icon(Icons.scuba_diving, color: Colors.white, size:70, )),
                      IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => SegundaPag()));}, icon: const Icon(Icons.hiking, color: Colors.white, size:70,)),
                      IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Canoagem()));}, icon: const Icon(Icons.kayaking, color: Colors.white, size:70,)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Ciclismo()));}, icon: const Icon(Icons.directions_bike, color: Colors.white, size:70,)),
                     IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cachoeirismo()));}, icon: const Icon(Icons.waterfall_chart, color: Colors.white, size:70,)),
                      IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Barco()));}, icon: const Icon(Icons.directions_boat, color: Colors.white, size:70,)),
                    ],
                  ),
                ],
              ),
            const SizedBox(height: 100), // Ajusta a distância do final da tela
            ],
          ),
          Positioned(
            top: 50,
            left: 0,
            right: 0, 
            child: AppBar(
              title: Image.asset('imagens/ubatuba.png'),
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
            ),
          ),
        ],
      ),
      
    );

    
  }

  

}