import 'package:flutter/material.dart';

class ResultadoCard extends StatelessWidget {
  const ResultadoCard({
    super.key,
    required this.pergunta,
    required this.resposta,
    required this.pontos,
  });

  final String pergunta;
  final String resposta;
  final int pontos;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: .symmetric(vertical: 8),
        child: Column(
          children: [
            Text(
              pergunta,
              textAlign: .center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: .bold,
                color: Colors.indigo,
              ),
            ),
            Text(
              resposta.toUpperCase(),
              textAlign: .center,
              style: TextStyle(
                fontSize: 18, 
                fontWeight: .bold,
                color: pontos > 0 ? Colors.green : Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
