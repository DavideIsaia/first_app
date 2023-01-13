import 'package:flutter/material.dart';
import './domanda.dart';
import './risposta.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _domIndex = 0;

  void risp() {
    setState(() {
      _domIndex = _domIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var domande = [
      "Qual è il tuo colore preferito?",
      "Qual è il tuo animale preferito?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ciao mondo!'),
        ),
        body: Column(
          children: [
            Domanda(domande[_domIndex]),
            Risposta(risp),
          ],
        ),
      ),
    );
  }
}
