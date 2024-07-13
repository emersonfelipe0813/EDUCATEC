import 'package:flutter/material.dart';
import 'package:educatec/RW2.dart';

class RW1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(
                fontSize: screenHeight * 0.05, fontWeight: FontWeight.bold),
            children: <TextSpan>[
              TextSpan(
                  text: 'Instruções', style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: screenHeight,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  child: Container(
                    padding: EdgeInsets.all(screenHeight * 0.02),
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(screenHeight * 0.01),
                    ),
                    child: Text(
                      'O Quiz testa seus conhecimentos sobre a Disciplina.',
                      style: TextStyle(fontSize: screenHeight * 0.03),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                  child: Container(
                    padding: EdgeInsets.all(screenHeight * 0.02),
                    width: screenWidth * 0.9,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(screenHeight * 0.01),
                    ),
                    child: Text(
                      'Visite nosso site https://eteredes.wordpress.com para consultar conteúdos da disciplina.',
                      style: TextStyle(fontSize: screenHeight * 0.03),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                SizedBox(height: screenHeight * 0.02),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RW2()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.03,
                        vertical: screenHeight * 0.02),
                  ),
                  child: Text(
                    'Iniciar Quiz',
                    style: TextStyle(
                        fontSize: screenHeight * 0.025,
                        color: Colors.black), // Cor preta adicionada aqui
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
