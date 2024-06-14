import 'package:flutter/material.dart';
import 'package:teste/main.dart';

void segundapag() {
  runApp(SegundaPag());
}


class SegundaPag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'imagens/Escalada.png', 
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 30,
                  left: 10,
                  child: IconButton(onPressed: () {Navigator.push(
                    context, MaterialPageRoute(builder: (context) => EcotubaApp()));}, icon: const Icon(Icons.arrow_back)),
                ),
                Positioned(
                  top: 200,
                  left: 0,
                  right: 0,
                  child: Image.asset(
                    'imagens/letraescalada.png',
                    

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'imagens/PraiaItamambuca.png', 
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'imagens/letraitamambuca.png',
                    
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Bem-vindo à emocionante paisagem de escalada na Praia do Itamambuca, em Ubatuba. Prepare-se para uma aventura vertical que combina desafio, beleza natural e adrenalina em um cenário de tirar o fôlego. À medida que você se aproxima das impressionantes formações rochosas que cercam a Praia do Itamambuca, será instantaneamente cativado pela majestade e imponência das falésias. Estas paredes verticais oferecem um terreno perfeito para a escalada, com uma variedade de vias que desafiam todos os níveis de habilidade, desde iniciantes até os escaladores experientes.\n\nImagine-se subindo pelas rochas, impulsionado pela emoção e pela satisfação de superar os obstáculos naturais que surgem em seu caminho. Cada agarrar e cada passo são uma conquista pessoal, uma oportunidade de superação e crescimento. À medida que você avança, será recompensado com vistas deslumbrantes da Praia do Itamambuca e do oceano que se estende até o horizonte.\n\nMas a escalada na Praia do Itamambuca não é apenas sobre desafiar a si mesmo fisicamente e mentalmente; é uma experiência de imersão na natureza exuberante e serena da região. Enquanto você se movimenta pelas rochas, será cercado pelo ruído suave das ondas quebrando na praia, pelo perfume das flores nativas e pela sensação refrescante do vento do mar em seu rosto.',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
