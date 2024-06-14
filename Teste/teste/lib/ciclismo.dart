import 'package:flutter/material.dart';
import 'package:teste/main.dart';

void cicilismo() {
  runApp( Ciclismo());
}


class Ciclismo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'imagens/Cicli.png', 
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
                    'imagens/leCicli.png',
                    

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'imagens/Atlan.png', 
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'imagens/leAtlan.png',
                    
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Bem-vindo às trilhas na Mata Atlântica de Ubatuba, um paraíso para os amantes do ciclismo que buscam uma aventura emocionante em meio à natureza exuberante. Prepare-se para uma jornada única sobre duas rodas, onde cada pedalada será uma descoberta de novas paisagens e experiências inesquecíveis.Imagine-se pedalando por trilhas sinuosas, cercado pela riqueza e diversidade da Mata Atlântica. À medida que você avança, será envolvido pelo perfume fresco das flores tropicais, pelo som suave dos pássaros cantando e pela sensação revigorante do ar puro da floresta.Cada curva da trilha revela uma nova surpresa: riachos cristalinos borbulham ao lado do caminho, cachoeiras escondidas surgem entre a folhagem verdejante e avistosas aves tropicais voam acima de você. É uma experiência imersiva que desperta todos os seus sentidos e te conecta profundamente com a natureza ao seu redor.Mas as trilhas na Mata Atlântica não são apenas sobre a beleza cênica - elas também oferecem um desafio emocionante para os ciclistas que buscam testar suas habilidades e resistência. Subidas íngremes, descidas técnicas e terrenos variados proporcionam uma experiência de ciclismo dinâmica e estimulante que manterá seu coração acelerado e sua mente focada.',
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