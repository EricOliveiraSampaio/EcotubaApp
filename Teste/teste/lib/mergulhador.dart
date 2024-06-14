import 'package:flutter/material.dart';
import 'package:teste/main.dart';

void mergulhador() {
  runApp( Mergulhador());
}


class Mergulhador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'imagens/Mergulhador.png', 
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
                    'imagens/leMer.png',
                    

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'imagens/ilhaAnchieta.png', 
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'imagens/leAnchi.png',
                    
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Bem-vindo a um dos tesouros subaquáticos mais deslumbrantes do litoral brasileiro: a Ilha Anchieta, em Ubatuba. Prepare-se para uma experiência de mergulho que vai além das suas expectativas mais selvagens.Imagine-se mergulhando em águas cristalinas, cercado por uma miríade de cores e vida marinha exuberante. Isso é apenas o começo do que a Ilha Anchieta tem a oferecer aos entusiastas do mergulho.Ao mergulhar nas águas tranquilas e profundas ao redor da ilha, você será recebido por um verdadeiro paraíso submarino. Enquanto desliza suavemente pelas águas, será saudado por uma impressionante variedade de criaturas marinhas: cardumes de peixes coloridos dançam ao seu redor, tartarugas majestosas deslizam graciosamente e, se tiver sorte, até mesmo golfinhos podem fazer uma aparição graciosa.Mas a beleza do mergulho na Ilha Anchieta vai além das criaturas que você encontrará. Os recifes de coral vibrantes oferecem uma paisagem deslumbrante, repleta de vida e cores. Você será envolvido por uma profusão de tons de azul e verde, enquanto explora os recifes e descobre uma miríade de formas e padrões fascinantes.',
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