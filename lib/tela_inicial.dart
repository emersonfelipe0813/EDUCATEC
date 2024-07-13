import 'package:flutter/material.dart';
import 'tela_temas.dart';

class TelaInicial extends StatefulWidget {
  @override
  _TelaInicialState createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  TextEditingController emailController = TextEditingController();
  TextEditingController senhaController = TextEditingController();
  bool enableButton = false;
  FocusNode emailFocus = FocusNode();
  FocusNode senhaFocus = FocusNode();
  bool showEmailHint = false;
  bool showSenhaHint = false;

  @override
  void initState() {
    super.initState();
    emailController.addListener(verificarCamposPreenchidos);
    senhaController.addListener(verificarCamposPreenchidos);
    emailFocus.addListener(atualizarHintEmail);
    senhaFocus.addListener(atualizarHintSenha);
  }

  void verificarCamposPreenchidos() {
    setState(() {
      String email = emailController.text;
      enableButton = email.isNotEmpty &&
          senhaController.text.isNotEmpty &&
          _validarEmail(email);
    });
  }

  void atualizarHintEmail() {
    setState(() {
      showEmailHint = emailFocus.hasFocus && emailController.text.isEmpty;
    });
  }

  void atualizarHintSenha() {
    setState(() {
      showSenhaHint = senhaFocus.hasFocus && senhaController.text.isEmpty;
    });
  }

  bool _validarEmail(String email) {
    // Verificar se o e-mail termina com "@gmail.com" em minúsculas
    return email.toLowerCase().endsWith("@gmail.com");
  }

  @override
  void dispose() {
    emailController.dispose();
    senhaController.dispose();
    emailFocus.dispose();
    senhaFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: constraints.maxWidth),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/logo.png',
                      height: constraints.maxHeight * 0.3,
                    ),
                    SizedBox(height: constraints.maxHeight * 0.06),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              controller: emailController,
                              focusNode: emailFocus,
                              decoration: InputDecoration(
                                labelText: 'Email',
                                hintText:
                                    showEmailHint ? 'example@gmail.com' : null,
                                border: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(height: constraints.maxHeight * 0.02),
                            TextField(
                              controller: senhaController,
                              focusNode: senhaFocus,
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Senha',
                                hintText:
                                    showSenhaHint ? 'example123456' : null,
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: constraints.maxHeight * 0.05),
                    ElevatedButton(
                      onPressed: enableButton
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TelaTemas()),
                              );
                            }
                          : null,
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(
                          horizontal: constraints.maxWidth * 0.1,
                          vertical: constraints.maxHeight * 0.02,
                        ),
                      ),
                      child: Text(
                        'Avançar',
                        style: TextStyle(
                            fontSize: constraints.maxHeight * 0.025,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
