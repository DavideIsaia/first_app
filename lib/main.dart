import 'dart:async';

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

  void _risp() {
    setState(() {
      _domIndex = _domIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var domande = [
      {
        "testoDom": "Qual è il tuo colore preferito?",
        "risposte": ["Nero", "Blu", "Rosso", "Bianco"],
      },
      {
        "testoDom": "Qual è il tuo animale preferito?",
        "risposte": ["Cavallo", "Cane", "Gatto", "Leone"],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ciao mondo!'),
        ),
        body: Column(
          children: [
            Domanda(domande[_domIndex]["testoDom"] as String),
            ...(domande[_domIndex]["risposte"] as List<String>)
                .map((risposta) => Risposta(_risp, risposta))
                .toList()
          ],
        ),
      ),
    );
  }
}
