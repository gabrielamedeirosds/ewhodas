import 'package:ewhodas/formulario.dart';
import 'package:ewhodas/pagina_inicial.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class paciente_formulario extends StatefulWidget {
  @override
  _paciente_formularioState createState() => _paciente_formularioState();
}

class _paciente_formularioState extends State<paciente_formulario> {
  final _formKey =
      GlobalKey<FormState>(); //key do formulario (identifica o form)

  //Estrutura da Lista -> ["enunciado", tipo de pergunta, pesos dos itens, dominio]
  //caso a questão não entre no calculo -> lista vazia
  List<List> enunciadoLista = [
    ["F1 - Número da identidade do entrevistado", 0, [], ""],
    ["F2 - Número da identidade do entrevistador", 0, [], ""],
    ["F3 - Momento da Avaliação", 0, [], ""],
    ["F4 - Data da Entrevista", 0, [], ""],
    [
      "F5 - Condição em que vive no momento da entrevista (marque apenas uma alternativa)"
          "\n "
          "\n- Independente na comunidade"
          "\n- Vive com assistência"
          "\n- Hospitalizado",
      0, [], ""
    ],
    ["A1 - Anote o sexo da pessoa conforme observado", 0, [], ""],
    ["A2 - Qual a sua idade?", 0, [], ""],
    [
      "A3 - Quantos anos no total você passou estudando em escola, faculdade ou universidade?",
      0, [], ""
    ],
    [
      "A4 - Qual é o seu estado civil atual?"
          "\n "
          "\n- 1- Nunca se casou"
          "\n- 2- Atualmente casado(a)"
          "\n- Separado(a)"
          "\n- Divorciado(a)"
          "\n- Viúvo(a)"
          "\n- Mora junto",
      0, [], ""
    ],
    [
      "A5 - Qual opção descreve melhor a situação da sua principal atividade de trabalho?"
          "\n "
          "\n- 1- Trabalho remunerado"
          "\n- 2- Autônomo(a), por exemplo, é dono do próprio negócio ou trabalha na própria terra"
          "\n- Trabalho não remunerado, como trabalho voluntário ou caridade"
          "\n- Estudante"
          "\n- Dona de casa"
          "\n- Aposentado(a)"
          "\n- Desempregado(a) (por problemas de saúde)"
          "\n- Desempregado(a) (outras razões)"
          "\n- Outros (especifique)",
      0, [], ""
    ],

    //DOMINIO 1
    ["D1.1 - Concentrar-se para fazer alguma coisa durante dez minutos?", 1, [0,1,2,3,4, 99], "d1"],
    ["D1.2 - Lembrar-se de fazer coisas importantes?", 1, [0,1,2,3,4, 99], "d1"],
    ["D1.3 - Analisar e encontrar soluções para problemas do dia-a-dia?", 1, [0,1,2,3,4, 99], "d1"],
    [
      "D1.4 - Aprender uma nova tarefa, por exemplo, como chegar a um lugar desconhecido?",
      1, [0,1,2,3,4, 99], "d1"
    ],
    ["D1.5 - Compreender de forma geral o que as pessoas dizem?", 1, [0,1,1,2,2, 99], "d1"],
    ["D1.6 - Começar e manter uma conversa?", 1, [0,1,1,2,2, 99], "d1"],

    //DOMINIO 2
    ["D2.1 - Ficar em pé por longos períodos como 30 minutos?", 1, [0,1,2,3,4, 99], "d2"],
    ["D2.2 - Levantar-se a partir da posição sentada?", 1, [0,1,1,2,2, 99], "d2"],
    ["D2.3 - Movimentar-se dentro de sua casa?", 1, [0,1,1,2,2, 99], "d2"],
    ["D2.4 - Sair da sua casa?", 1, [0,1,2,3,4, 99], "d2"],
    ["D2.5 - Andar por longas distâncias como por 1 quilômetro?", 1, [0,1,2,3,4, 99], "d2"],

    //DOMINIO 3
    ["D3.1 - Lavar seu corpo inteiro?", 1, [0,1,1,2,2, 99], "d3"],
    ["D3.2 - Vestir-se?", 1, [0,1,2,3,4, 99], "d3"],
    ["D3.3 - Comer?", 1, [0,1,1,2,2, 99], "d3"],
    ["D3.4 - Ficar sozinho sem a ajuda de outras pessoas por alguns dias?", 1, [0,1,1,2,2, 99], "d3"],

    //DOMINIO 4
    ["D4.1 - Lidar com pessoas que você não conhece?", 1, [0,1,1,2,2, 99], "d4"],
    ["D4.2 - Manter uma amizade?", 1, [0,1,1,2,2, 99], "d4"],
    ["D4.3 - Relacionar-se com pessoas que são próximas a você?", 1, [0,1,1,2,2, 99], "d4"],
    ["D4.4 - Fazer novas amizades?", 1, [0,1,2,3,4, 99], "d4"],
    ["D4.5 - Ter atividades sexuais?", 1, [0,1,1,2,2, 99], "d4"],

    //DOMINIO 5(1)
    ["D5.1 - Cuidar das suas responsabilidades domésticas?", 1, [0,1,1,2,2, 99], "d51"],
    ["D5.2 - Fazer bem as suas tarefas domésticas mais importantes?", 1, [0,1,1,2,2, 99], "d51"],
    ["D5.3 - Fazer todas as tarefas domésticas que você precisava?", 1, [0,1,2,3,4, 99], "d51"],
    ["D5.4 - Fazer as tarefas domésticas na velocidade necessária?", 1, [0,1,1,2,2, 99], "d51"],

    [
      "Se qualquer das respostas de D5.2-D5.5 for maior que “nenhuma” (codificada como “1”), responda à pergunta D5.01 ao fim da página: \nD5.01 Nos últimos 30 dias, quantos dias você reduziu ou deixou de fazer as tarefas domésticas por causa da sua condição de saúde?",
      0, [], ""
    ],

    //DOMINIO 5(2)
    ["D5.5 - Suas atividades diárias do trabalho/escola?", 1, [0,1,1,2,2, 99], "d52"],
    ["D5.6 - Realizar bem as atividades mais importantes do trabalho/escola?", 1, [0,1,2,3,4, 99], "d52"],
    ["D5.7 - Fazer todo o trabalho que você precisava?", 1, [0,1,2,3,4, 99], "d52"],
    ["D5.8 - Fazer todo o trabalho na velocidade necessária?", 1, [0,1,2,3,4, 99], "d52"],

    [
      "D5.9 - Você já teve que reduzir a intensidade do trabalho por causa de uma condição de saúde?", 2, [], ""], //questao de sim ou nao, retirar
    ["D5.10 - Você ja ganhou menos dinheiro como resultado de uma condição de saúde?",2, [], ""], //questao de sim ou nao, RETIRAR

    [
      "Se qualquer das respostas de D5.5-D5.8 for maior que “nenhuma” (codificada como “1”), responda à pergunta D5.02 ao fim da página: \nD5.02 Nos últimos 30 dias, por quantos dias você deixou de trabalhar por meio dia ou mais por causa da sua condição de saúde?",
      0, [], ""
    ], //EXTENSO 33

    //DOMINIO 6
    [
      "D6.1 - Quanta dificuldade você teve ao participar em atividades comunitárias (por exemplo, festividades,  atividades religiosas ou outra atividade) do mesmo modo que qualquer outra pessoa?",
      1, [0,1,1,2,2, 99], "d6"
    ],
    [
      "D6.2 - Quanta dificuldade você teve por causa de barreiras ou obstáculos no mundo à sua volta?",
      1, [0,1,2,3,4, 99], "d6"],
    [
      "D6.3 - Quanta dificuldade você teve para viver com dignidade por causa das atitudes e ações de outros?",
      1, [0,1,1,2,2, 99], "d6"
    ],
    [
      "D6.4 - Quanto tempo você gastou com sua condição de saúde ou suas consequências?",
      1, [0,1,2,3,4, 99], "d6"
    ],
    [
      "D6.5 - Quanto você tem sido emocionalmente afetado por sua condição de saúde?",
      1, [0,1,2,3,4, 99], "d6"
    ],
    [
      "D6.6 - Quanto a sua saúde tem prejudicado financeiramente você ou sua família?",
      1, [0,1,1,2,2, 99], "d6"
    ],
    [
      "D6.7 - Quanta dificuldade sua família teve por causa da sua condição de saúde?",
      1, [0,1,2,3,4, 99], "d6"
    ],
    [
      "D6.8 - Quanta dificuldade você teve para fazer as coisas por si mesmo(a) para relaxamento ou lazer?",
      1, [0,1,1,2,2,99], "d6"
    ],

    [
      "H1 - Em geral, nos últimos 30 dias, por quantos dias essas dificuldades estiveram presentes?",
      0, [], ""
    ],
    [
      "H2 - Nos últimos 30 dias, por quantos dias você esteve completamente incapaz de executar suas atividades usuais ou de trabalho por causa da sua condição de saúde?",
      0, [], ""
    ],
    [
      "H3 - Nos últimos 30 dias, sem contar os dias que você esteve totalmente incapaz, por quantos dias você diminuiu ou reduziu suas atividades usuais ou de trabalho por causa da sua condição de saúde?",
      0, [], ""
    ],
  ];

  Resultado _resultado;
  List<Pergunta> perguntas = new List();

  int sexo = 0;
  int estadoCivil = 0;
  int profissao = 0;

  @override
  void initState() {
    for (int i = 0; i < enunciadoLista.length; i++) {
      perguntas.add(Pergunta(enunciadoLista[i][0], enunciadoLista[i][1], i,
          enunciadoLista[i][2], enunciadoLista[i][3]));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(43, 56, 97, 1),
          title: const Text(' '),
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  _resultado = Resultado(perguntas);
                  print(_resultado.gerarDo51());
                },
                child: Text("Confirmar"))
          ],
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    //height: double.infinity, //colocar isso na pagina do pdf
                    child: ListView.builder(
                      itemCount: perguntas.length,
                      itemBuilder: (context, i) => resposta(perguntas[i]),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                FlatButton(
                  //TO DO: ADICIONAR UM IF QUE SÓ PERMITA O AVANÇO DE PAGINA CASO TODAS AS PERGUNTAS ESTEJAM RESPONDIDAS
                  color: Color.fromRGBO(43, 56, 97, 1),
                  onPressed: () {
                    _resultado = Resultado(perguntas);
                    print(_resultado.gerarFormulario());
                  },
                  child: Text(
                    "Confirmar",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Widget resposta(Pergunta objeto) {
    switch (objeto.tipo) {
      case 0:
        {
          //perguntas com resposta por extenso
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objeto.enunciado,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 4,
                  // expands: true,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(88, 98, 143, 1), fontSize: 14),
                  ),
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          );
        }
        break;

      case 1:
        {
          //perguntas de marcar
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objeto.enunciado,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile(
                      title: Text("1 - Nenhuma"),
                      value: 0,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("2 - Leve"),
                      value: 1,
                      groupValue: objeto.resposta,             
                      onChanged: (dynamic valor) {
                        setState(() {

                          objeto.setResposta(valor);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("3 - Moderada"),
                      value: 2,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          print(objeto.resposta);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("4 - Grave"),
                      value: 3,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("5 - Extrema ou não consegue fazer"),
                      value: 4,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("6 - Não se aplica"),
                      value: 5,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        break;

      case 2:
        {
          //perguntas afirmativas
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  objeto.enunciado,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile(
                      title: Text("Não"),
                      value: 0,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);

                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                    RadioListTile(
                      title: Text("Sim"),
                      value: 1,
                      groupValue: objeto.resposta,
                      onChanged: (dynamic valor) {
                        setState(() {
                          objeto.setResposta(valor);
                          // respostaD[objeto.id] = valor;
                          // print(respostaD);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        }
        break;
      default:
        {
          return Container();
          //statements;

        }
        break;
    }
  }
}
