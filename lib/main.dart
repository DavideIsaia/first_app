import 'package:flutter/material.dart';
import './domanda.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var domIndex = 0;

  void risp() {
    setState(() {
      domIndex = domIndex + 1;
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
            Domanda(domande[domIndex]),
            ElevatedButton(
              onPressed: risp,
              child: const Text("risp 1"),
            ),
            ElevatedButton(
              onPressed: risp,
              child: const Text("risp 2"),
            ),
            ElevatedButton(
              onPressed: risp,
              child: const Text("risp 3"),
            ),
          ],
        ),
      ),
    );
  }
}
