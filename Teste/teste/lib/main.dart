import 'package:flutter/material.dart';

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
                      _buildActivityButton(Icons.scuba_diving, 'mergulho'),
                      _buildActivityButton(Icons.kayaking, 'canoagem'),
                      _buildActivityButton(Icons.hiking, 'escalada'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                      _buildActivityButton(Icons.directions_bike, 'ciclismo'),
                      _buildActivityButton(Icons.waterfall_chart, 'cachoeirismo'),
                      _buildActivityButton(Icons.directions_boat, 'barco'),
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

  Widget _buildActivityButton(IconData icon, String label) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon, size: 50, color: Colors.white),
          onPressed: () {
            // Adicione a navegação ou funcionalidade desejada aqui
          },
        ),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}