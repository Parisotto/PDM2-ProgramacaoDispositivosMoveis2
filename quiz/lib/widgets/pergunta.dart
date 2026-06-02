import 'package:flutter/material.dart';
import 'botao.dart';

class Pergunta extends StatelessWidget {
  const Pergunta({
    super.key, 
    required this.txt, 
    required this.img,
    required this.respostas,
    required this.funcaoResponder,
  });

  final String txt;
  final String img;
  final List respostas;
  final void Function(String, int) funcaoResponder;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          txt,
          textAlign: .center,
          style: TextStyle(fontSize: 26, fontWeight: .bold),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
          child: Image.asset('assets/images/$img'),
        ),
        for (int i = 0; i < respostas.length; i++)
          Botao(
            txt: respostas[i]['r'], 
            pontos: respostas[i]['p'],
            responder: funcaoResponder, 
          ),
      ],
    );
  }
}
