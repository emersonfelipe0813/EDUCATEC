import 'package:flutter/material.dart';
import 'tela_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'educatec',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: TelaInicial(),
    );
  }
}
