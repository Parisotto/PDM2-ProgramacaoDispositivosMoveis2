import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  const Botao({
    super.key, 
    required this.txt,
    required this.pontos,
    required this.responder,
  });

  final String txt;
  final int pontos;
  final void Function(String, int) responder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: SizedBox(
        width: .infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: .zero),
          ),
          onPressed: () { responder(txt, pontos); },
          child: Text(
            txt,
            style: TextStyle(fontSize: 22, color: Colors.black),
            textAlign: .center,
          ),
        ),
      ),
    );
  }
}
