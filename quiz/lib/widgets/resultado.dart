import 'package:flutter/material.dart';
import 'resultado_card.dart';

class Resultado extends StatelessWidget {
  const Resultado({
    super.key,
    required this.reiniciar,
    required this.respostas,
    required this.totalPontos,
  });

  final void Function() reiniciar;
  final List respostas;
  final int totalPontos;

  @override
  Widget build(BuildContext context) {
    final String mensagem = totalPontos == 10
        ? "Parabéns"
        : totalPontos > 6
        ? "Aprovado"
        : totalPontos > 3
        ? "Recuperação"
        : "Reprovado";

    return SizedBox(
      width: .infinity,
      child: Column(
        children: [
          Text(
            "Resultado",
            style: TextStyle(
              fontSize: 25,
              fontWeight: .bold,
              color: Color.fromARGB(255, 203, 152, 1),
            ),
          ),

          // Aqui vão os cards das perguntas e respostas
          // for (int i = 0; i < respostas.length; i++)
          //   ResultadoCard(
          //     pergunta: respostas[i]['pergunta'],
          //     resposta: respostas[i]['resposta'],
          //     pontos: respostas[i]['pontos']
          //   ),
          ...respostas.map(
            (resp) => ResultadoCard(
              pergunta: resp['pergunta'],
              resposta: resp['resposta'],
              pontos: resp['pontos'],
            ),
          ),

          SizedBox(height: 20),
          Text(
            "$mensagem!\nVocê obteve ${totalPontos.toString()} pontos",
            textAlign: .center,
            style: TextStyle(
              fontSize: 25,
              color: totalPontos == 10
                  ? const Color.fromARGB(255, 36, 126, 39)
                  : totalPontos > 6
                  ? Colors.blue
                  : Colors.red,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: reiniciar,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, double.minPositive),
              padding: .all(10),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: .zero),
            ),
            child: Text('Reiniciar', style: TextStyle(fontSize: 25)),
          ),
        ],
      ),
    );
  }
}
