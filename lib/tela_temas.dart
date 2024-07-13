import 'package:flutter/material.dart';
import 'SO1.dart'; // Importa a tela SO1.dart
import 'TCP1.dart'; // Importa a tela TCP1.dart
import 'LOG1.dart'; // Importa a tela LOG1.dart
import 'SI1.dart'; // Importa a tela RDC1.dart
import 'RW1.dart'; // Importa a tela RW1.dart

class TelaTemas extends StatelessWidget {
  final List<String> temas = [
    'Adm. de Sistemas Operacionais (ASO)',
    'Estrutura de Comunicação de Dados (ECD)',
    'Manutenção de Computadores (MMC)',
    'Segurança de Dados e Informação (SDI)',
    'Tecnologias Atuais de Redes (TAR)'
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Adicionado
        centerTitle: true,
        title: Text(
          'Disciplinas',
          style: TextStyle(
              fontSize: screenHeight * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(screenHeight * 0.03),
        itemCount: temas.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              switch (index) {
                case 0:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SO1()),
                  );
                  break;
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TCP1()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LOG1()),
                  );
                  break;
                case 3:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SI1()),
                  );
                  break;
                case 4:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RW1()),
                  );
                  break;
                default:
                  break;
              }
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
              padding: EdgeInsets.all(screenHeight * 0.02),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(screenHeight * 0.01),
              ),
              child: Text(
                temas[index],
                style: TextStyle(fontSize: screenHeight * 0.025),
              ),
            ),
          );
        },
      ),
    );
  }
}
