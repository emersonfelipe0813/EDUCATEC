import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Import necessário para SystemNavigator.pop()
import 'tela_temas.dart'; // substitua pelo caminho correto do arquivo TelaTemas
import 'RW2.dart'; // substitua pelo caminho correto do arquivo LOG2

class RW12 extends StatelessWidget {
  final int score; // recebe a variável newscore da tela LOG11

  RW12({required this.score}); // construtor que recebe a variável newscore

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    String message;

    if (score >= 6 && score <= 9) {
      message = "Parabéns, continue assim e você chegará no 10";
    } else if (score >= 0 && score <= 5) {
      message = "Você não foi muito bem, tente novamente que você conseguirá.";
    } else if (score == 10) {
      message =
          "Parabéns, incrivelmente você conseguiu acertar todas as Perguntas.";
    } else {
      message =
          "Não tente quebrar o código amigo(a)"; // caso o score esteja fora do esperado
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(screenHeight * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Aqui está sua Pontuação final: $score/10', // mostre o conteúdo da variável newscore
                  style: TextStyle(
                    fontSize: screenHeight * 0.05, // Tamanho do texto aumentado
                    fontWeight: FontWeight.bold, // Letra em negrito
                  ),
                  textAlign: TextAlign.center, // Texto centralizado
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  message,
                  style: TextStyle(
                    fontSize: screenHeight * 0.04, // Tamanho do texto aumentado
                    fontWeight: FontWeight.bold, // Letra em negrito
                  ),
                  textAlign: TextAlign.center, // Texto centralizado
                ),
                SizedBox(
                    height: screenHeight *
                        0.1), // Espaço grande entre os textos e o botão
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TelaTemas()),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black, // Cor do ícone mudada para preto
                    size: screenHeight * 0.03, // Tamanho do ícone aumentado
                  ),
                  label: Text(
                    'Voltar para as disciplinas',
                    style: TextStyle(
                      fontSize:
                          screenHeight * 0.03, // Tamanho do texto aumentado
                      color: Colors.black, // Cor do texto mudada para preto
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth * 0.5,
                        screenHeight * 0.08), // Tamanho do botão
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RW2()),
                    );
                  },
                  icon: Icon(
                    Icons.refresh,
                    color: Colors.black, // Cor do ícone mudada para preto
                    size: screenHeight * 0.03, // Tamanho do ícone aumentado
                  ),
                  label: Text(
                    'Refazer o Quiz',
                    style: TextStyle(
                      fontSize:
                          screenHeight * 0.03, // Tamanho do texto aumentado
                      color: Colors.black, // Cor do texto mudada para preto
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth * 0.5,
                        screenHeight * 0.08), // Tamanho do botão
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                ElevatedButton.icon(
                  onPressed: () {
                    SystemNavigator.pop(); // Fecha o aplicativo
                  },
                  icon: Icon(
                    Icons.exit_to_app,
                    color: Colors.black, // Cor do ícone mudada para preto
                    size: screenHeight * 0.03, // Tamanho do ícone aumentado
                  ),
                  label: Text(
                    'Sair do app',
                    style: TextStyle(
                      fontSize:
                          screenHeight * 0.03, // Tamanho do texto aumentado
                      color: Colors.black, // Cor do texto mudada para preto
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(screenWidth * 0.5,
                        screenHeight * 0.08), // Tamanho do botão
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
