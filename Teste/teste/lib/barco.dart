import 'package:flutter/material.dart';
import 'package:teste/main.dart';

void barco() {
  runApp( Barco());
}


class Barco extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.network(
                  'imagens/Bar.png', 
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
                    'imagens/leBar.png',
                    

                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Image.network(
                    'imagens/CostaDeslu.png', 
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 16),
                  Image.asset(
                    'imagens/leCostaDeslu.png',
                    
                  ),
                  SizedBox(height: 16),
                  const Text(
                    'Bem-vindo à deslumbrante costa de Ubatuba, onde o mar encontra a terra em uma sinfonia de beleza natural e aventura marítima. Embarque em um passeio de barco e mergulhe em um mundo de paisagens espetaculares, águas cristalinas e descobertas emocionantes.À medida que você navega ao longo da costa de Ubatuba, será recebido por uma vista panorâmica de praias paradisíacas, enseadas isoladas e formações rochosas majestosas. Cada curva do litoral revela uma nova maravilha, convidando você a explorar e se maravilhar com a diversidade e a beleza desta região única.Imagine-se navegando pelas águas calmas e transparentes, com o sol brilhando acima e uma brisa suave acariciando seu rosto. Você terá a oportunidade de visitar algumas das ilhas encantadoras que pontilham o litoral de Ubatuba, como a Ilha Anchieta, onde você pode caminhar por trilhas exuberantes, relaxar em praias desertas e mergulhar em águas repletas de vida marinha.Além das ilhas, você também terá a chance de explorar cavernas marinhas e formações rochosas impressionantes ao longo da costa. Navegue através de grutas misteriosas, descubra cavernas escondidas e maravilhe-se com as maravilhas geológicas que se erguem das profundezas do oceano.',
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