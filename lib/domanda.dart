import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Domanda extends StatelessWidget {
  String domanda = "";
  Domanda(this.domanda);

  @override
  Widget build(BuildContext context) {
    return Text(domanda);
  }
}
