import 'package:flutter/material.dart';
import 'package:teste/main.dart';

void cachoeirismo() {
  runApp( Cachoeirismo());
}


class Cachoeirismo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'imagens/Cacho.png', 
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
                    'imagens/leCacho.png',
                    

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'imagens/CachoRe.png', 
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'imagens/leCachoRe.png',
                    
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Bem-vindo à deslumbrante Cachoeira da Renata, um verdadeiro tesouro escondido em meio à exuberante Mata Atlântica de Ubatuba. Prepare-se para uma experiência única de cachoeirismo que vai encantar seus sentidos e renovar sua alma.Ao chegar à Cachoeira da Renata, você será recebido por uma trilha serpenteante que atravessa uma mata exuberante, repleta de vida e cores. O caminho é uma aventura em si mesma, com a promessa de maravilhas naturais esperando por você no final da jornada.À medida que você avança pela trilha, o som suave da água corrente começa a ficar mais alto, anunciando a proximidade da cachoeira. E então, subitamente, você emerge da mata para ser presenteado com a visão deslumbrante da Cachoeira da Renata. Uma queda d água majestosa se precipita de uma altura impressionante, formando uma piscina natural convidativa na base.A água cristalina da cachoeira brilha ao sol, convidando-o a mergulhar e se refrescar em suas águas revigorantes. A energia vibrante e pura deste lugar sagrado é palpável, enchendo-o de uma sensação de paz e harmonia com a natureza ao seu redor.',
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