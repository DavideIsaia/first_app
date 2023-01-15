import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import './domanda.dart';
import './risposta.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> domande;
  final int domIndex;
  final Function risp; //se è VoidCallback ricorda di portarla a Function se metti degli argomenti

  Quiz({required this.domande, required this.risp, required this.domIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Domanda(domande[domIndex]["testoDom"] as String),
        ...(domande[domIndex]["risposte"] as List<Map<String, Object>>)
            .map((risposta) => Risposta(() => risp(risposta['punti']), risposta['testo'] as String))
            .toList()
      ],
    );
  }
}
