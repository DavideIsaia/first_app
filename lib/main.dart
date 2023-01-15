import 'dart:async';

import 'package:first_app/risultato.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './risultato.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _domIndex = 0;
  var _totPunti = 0;
  void _resetQuiz() {
    setState(() {
      _domIndex = 0;
      _totPunti = 0;
    });
  }

  final _domande = const [
    {
      "testoDom": "Qual è il tuo colore preferito?",
      "risposte": [
        {"testo": "Nero", "punti": 10},
        {"testo": "Blu", "punti": 8},
        {"testo": "Rosso", "punti": 5},
        {"testo": "Bianco", "punti": 1}
      ],
    },
    {
      "testoDom": "Qual è il tuo animale preferito?",
      "risposte": [
        {"testo": "Cavallo", "punti": 10},
        {"testo": "Cane", "punti": 9},
        {"testo": "Gatto", "punti": 6},
        {"testo": "Leone", "punti": 4}
      ],
    },
  ];

  void _risp(int punti) {
    _totPunti += punti;
    setState(() {
      _domIndex = _domIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test della personalità'),
        ),
        body: _domIndex < _domande.length
            ? Quiz(
                risp: _risp,
                domIndex: _domIndex,
                domande: _domande,
              )
            : Risultato(_totPunti, _resetQuiz),
      ),
    );
  }
}
