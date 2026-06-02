import 'dados.dart';

final List<Dados> dados = [
  Dados(
    pergunta: "Qual é a capital do Cazaquistão?", 
    imagem: "cazaquistao.jpg", 
    respostas: [
      {'r':'Brasilia', 'p':0}, 
      {'r':'New York', 'p':0}, 
      {'r':'Itanhaém', 'p':0}, 
      {'r':'Marte', 'p':0}, 
      {'r':'Astana', 'p':5}
    ]
  ),
  Dados(
    pergunta: 'O que quer dizer o ditado "Nem tudo que reluz é ouro?"', 
    imagem: "ouro.png", 
    respostas: [
      {'r':'A luz não é de ouro', 'p':0}, 
      {'r':'Um vagalume não é de ouro', 'p':0}, 
      {'r':'A Lua é de prata', 'p':0}, 
      {'r':'Não vai chover amanhã', 'p':0}, 
      {'r':'Não faço a menor ideia', 'p':0},
      {'r':'Quer dizer que nem tudo que reluz é ouro', 'p':1}
    ]
  ),
  Dados(
    pergunta: "Quem foi Igor Brown Swartzman?", 
    imagem: "misterioso.jpg", 
    respostas: [
      {'r':'Um astronauta', 'p':0}, 
      {'r':'Um escritor', 'p':0}, 
      {'r':'Um músico', 'p':0}, 
      {'r':'Um professor da Fatec', 'p':0}, 
      {'r':'Um lunático', 'p':0},
      {'r':'Um maquinista de trem', 'p':0},
      {'r':'Presidente do Azerbaijão', 'p':0},
      {'r':'Ninguém', 'p':4}
    ]
  ),
];