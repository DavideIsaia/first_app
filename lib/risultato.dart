import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Risultato extends StatelessWidget {
  final int risPunti;
  final VoidCallback resetHandler;

  Risultato(this.risPunti, this.resetHandler);

  String get risFrase {
    var risTesto = 'Finito!';
    if (risPunti <= 9) {
      risTesto = 'Fai schifo!';
    } else if (risPunti <= 16) {
      risTesto = 'Non male!';
    } else {
      risTesto = 'Grandeee!';
    }
    return risTesto;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            risFrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(onPressed: resetHandler, child: Text('Ricomincia'))
        ],
      ),
    );
  }
}
