import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Risposta extends StatelessWidget {
  final VoidCallback selectHandler;
  Risposta(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text("Risp 1"),
        onPressed: selectHandler,
      ),
    );
  }
}
