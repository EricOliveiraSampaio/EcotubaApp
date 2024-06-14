import 'package:flutter/material.dart';
import 'package:teste/main.dart';

void canoagem() {
  runApp( Canoagem());
}


class Canoagem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'imagens/Cano.png', 
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
                    'imagens/leCano.png',
                    

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'imagens/RioPu.png', 
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'imagens/leRioPu.png',
                    
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Imagine-se navegando suavemente pelas águas cristalinas e serenas do Rio Puruba, em Ubatuba, em uma jornada que combina aventura, relaxamento e conexão com a natureza. Esta é uma experiência imperdível para aqueles que desejam escapar do cotidiano agitado e se reconectar com a beleza intocada da natureza.À medida que você desliza pelo Rio Puruba em sua canoa, será envolvido por uma paisagem deslumbrante de Mata Atlântica exuberante. As margens do rio são adornadas com uma vegetação exuberante, criando uma atmosfera de serenidade e tranquilidade. Cada remada oferece uma nova perspectiva da rica biodiversidade desta região, onde você pode avistar uma variedade de aves, animais selvagens e plantas tropicais.Além da beleza natural, o Rio Puruba também oferece oportunidades para explorar enseadas isoladas, praias desertas e manguezais fascinantes ao longo do percurso. Você pode fazer uma pausa para nadar em águas refrescantes, caminhar pelas trilhas nas margens do rio ou simplesmente relaxar e contemplar a beleza ao seu redor.',
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