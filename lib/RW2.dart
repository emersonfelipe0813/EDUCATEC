import 'package:flutter/material.dart';
import 'RW3.dart';

class RW2 extends StatefulWidget {
  @override
  _RW2State createState() => _RW2State();
}

class _RW2State extends State<RW2> {
  int score = 0; // Definindo a pontuação inicial como 0
  Color verdadeiroColor = Colors.white;
  Color falsoColor = Colors.white;
  bool _verdadeiroButtonClicked =
      false; // Variável booleana para indicar se o botão "Verdadeiro" já foi clicado
  bool _falsoButtonClicked =
      false; // Variável booleana para indicar se o botão "Falso" já foi clicado
  bool _buttonDisabled =
      false; // Variável booleana para indicar se os botões estão desativados

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(
                fontSize: screenHeight * 0.03, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(text: 'TAR', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.1), // Add some space at the top
              Container(
                margin: EdgeInsets.symmetric(vertical: screenHeight * 0.005),
                padding: EdgeInsets.all(screenHeight * 0.02),
                width: screenWidth * 0.8,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black),
                  borderRadius: BorderRadius.circular(screenHeight * 0.01),
                ),
                child: Text(
                  'A computação em nuvem é um tipo de topologia de rede. ',
                  style: TextStyle(fontSize: screenHeight * 0.03),
                ),
              ),
              SizedBox(
                  height:
                      screenHeight * 0.05), // Add some space between containers
              GestureDetector(
                onTap: () {
                  if (!_falsoButtonClicked && !_buttonDisabled) {
                    // Verifica se o botão "Falso" já foi clicado e se os botões estão desativados
                    setState(() {
                      falsoColor = Colors
                          .red; // Muda a cor do fundo do container para vermelho
                      _falsoButtonClicked =
                          true; // Marca o botão "Falso" como clicado
                      _buttonDisabled = true; // Desativa os botões
                    });
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        _buttonDisabled =
                            false; // Reativa os botões após 2 segundos
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RW3(score: score)),
                      );
                    });
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  padding: EdgeInsets.all(screenHeight * 0.02),
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: falsoColor, // Muda a cor do fundodo container
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(screenHeight * 0.01),
                  ),
                  child: Text(
                    'Verdadeiro',
                    style: TextStyle(fontSize: screenHeight * 0.03),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  if (!_verdadeiroButtonClicked && !_buttonDisabled) {
                    // Verifica se o botão "Verdadeiro" já foi clicado e se os botões estão desativados
                    setState(() {
                      score += 1; // Incrementa a pontuação
                      verdadeiroColor = Colors
                          .green; // Muda a cor do fundo do container para verde
                      _verdadeiroButtonClicked =
                          true; // Marca o botão "Verdadeiro" como clicado
                      _buttonDisabled = true; // Desativa os botões
                    });
                    Future.delayed(Duration(seconds: 2), () {
                      setState(() {
                        _buttonDisabled =
                            false; // Reativa os botões após 2 segundos
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RW3(score: score)),
                      );
                    });
                  }
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  padding: EdgeInsets.all(screenHeight * 0.02),
                  width: screenWidth * 0.8,
                  decoration: BoxDecoration(
                    color: verdadeiroColor, // Muda a cor do fundo do container
                    border: Border.all(width: 1, color: Colors.black),
                    borderRadius: BorderRadius.circular(screenHeight * 0.01),
                  ),
                  child: Text(
                    'Falso',
                    style: TextStyle(fontSize: screenHeight * 0.03),
                  ),
                ),
              ),
              SizedBox(
                  height: screenHeight * 0.05), // Add some space at the bottom
            ],
          ),
        ),
      ),
    );
  }
}
