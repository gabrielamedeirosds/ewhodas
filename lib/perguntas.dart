import 'formulario.dart';

// enum TipoPergunta {
//   extenso,   // 0
//   marcar,    // 1
//   afirmativa // 2
// }

const basePerguntas = [
  {
    'enunciado': 'Nome do entrevistado', //ESSA
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'F1 - Número da identidade do entrevistado',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'F2 - Número da identidade do entrevistador',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'F3 - Número da Avaliação', //ESSA
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'F4 - Data da Entrevista',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'F5 - Condição em que vive no momento da entrevista (marque apenas uma alternativa)'
            '- Independente na comunidade'
            '- Vive com assistência'
            '- Hospitalizado',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'A1 - Anote o sexo da pessoa conforme observado', //ESSA
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'A2 - Qual a sua idade?', //ESSA
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'A3 - Quantos anos no total você passou estudando em escola, faculdade ou universidade?',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'A4 - Qual é o seu estado civil atual?'
        '- 1- Nunca se casou'
        '- 2- Atualmente casado(a)'
        '- 3- Separado(a)'
        '- 4  Divorciado(a)'
        '- 5- Viúvo(a)'
        '- 6- Mora junto',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
    
  },
  {
    'enunciado':
        'A5 - Qual opção descreve melhor a situação da sua principal atividade de trabalho?'
            '- 1- Trabalho remunerado'
            '- 2- Autônomo(a), por exemplo, é dono do próprio negócio ou trabalha na própria terra'
            '- 3- Trabalho não remunerado, como trabalho voluntário ou caridade'
            '- 4- Estudante'
            '- 5- Dona de casa'
            '- 6- Aposentado(a)'
            '- 7- Desempregado(a) (por problemas de saúde)'
            '- 8- Desempregado(a) (outras razões)'
            '- 9- Outros (especifique)',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'D1.1 - Concentrar-se para fazer alguma coisa durante dez minutos?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd1',
  },
  {
    'enunciado': 'D1.2 - Lembrar-se de fazer coisas importantes?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd1',
  },
  {
    'enunciado':
        'D1.3 - Analisar e encontrar soluções para problemas do dia-a-dia?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd1',
  },
  {
    'enunciado':
        'D1.4 - Aprender uma nova tarefa, por exemplo, como chegar a um lugar desconhecido?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd1',
  },
  {
    'enunciado': 'D1.5 - Compreender de forma geral o que as pessoas dizem?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd1',
  },
  {
    'enunciado': 'D1.6 - Começar e manter uma conversa?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd1',
  },
  {
    'enunciado': 'D2.1 - Ficar em pé por longos períodos como 30 minutos?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd2',
  },
  {
    'enunciado': 'D2.2 - Levantar-se a partir da posição sentada?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd2',
  },
  {
    'enunciado': 'D2.3 - Movimentar-se dentro de sua casa?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd2',
  },
  {
    'enunciado': 'D2.4 - Sair da sua casa?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd2',
  },
  {
    'enunciado': 'D2.5 - Andar por longas distâncias como por 1 quilômetro?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd2',
  },
  {
    'enunciado': 'D3.1 - Lavar seu corpo inteiro?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd3',
  },
  {
    'enunciado': 'D3.2 - Vestir-se?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd3',
  },
  {
    'enunciado': 'D3.3 - Comer?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd3',
  },
  {
    'enunciado':
        'D3.4 - Ficar sozinho sem a ajuda de outras pessoas por alguns dias?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd3',
  },
  {
    'enunciado': 'D4.1 - Lidar com pessoas que você não conhece?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd4',
  },
  {
    'enunciado': 'D4.2 - Manter uma amizade?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd4',
  },
  {
    'enunciado': 'D4.3 - Relacionar-se com pessoas que são próximas a você?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd4',
  },
  {
    'enunciado': 'D4.4 - Fazer novas amizades?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd4',
  },
  {
    'enunciado': 'D4.5 - Ter atividades sexuais?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd4',
  },
  {
    'enunciado': 'D5.1 - Cuidar das suas responsabilidades domésticas?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd51',
  },
  {
    'enunciado':
        'D5.2 - Fazer bem as suas tarefas domésticas mais importantes?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd51',
  },
  {
    'enunciado': 'D5.3 - Fazer todas as tarefas domésticas que você precisava?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd51',
  },
  {
    'enunciado': 'D5.4 - Fazer as tarefas domésticas na velocidade necessária?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd51',
  },
  {
    'enunciado':
        'Se qualquer das respostas de D5.2-D5.5 for maior que “nenhuma” (codificada como “1”), responda à pergunta D5.01 ao fim da página:'
            'D5.01 Nos últimos 30 dias, quantos dias você reduziu ou deixou de fazer as tarefas domésticas por causa da sua condição de saúde?',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado': 'D5.5 - Suas atividades diárias do trabalho/escola?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd52',
  },
  {
    'enunciado':
        'D5.6 - Realizar bem as atividades mais importantes do trabalho/escola?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd52',
  },
  {
    'enunciado': 'D5.7 - Fazer todo o trabalho que você precisava?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd52',
  },
  {
    'enunciado': 'D5.8 - Fazer todo o trabalho na velocidade necessária?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd52',
  },
  {
    'enunciado':
        'D5.9 - Você já teve que reduzir a intensidade do trabalho por causa de uma condição de saúde?',
    'tipo': TipoPergunta.afirmativa,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'D5.10 - Você ja ganhou menos dinheiro como resultado de uma condição de saúde?',
    'tipo': TipoPergunta.afirmativa,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'Se qualquer das respostas de D5.5-D5.8 for maior que “nenhuma” (codificada como “1”), responda à pergunta D5.02 ao fim da página:'
            'D5.02 Nos últimos 30 dias, por quantos dias você deixou de trabalhar por meio dia ou mais por causa da sua condição de saúde?',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'D6.1 - Quanta dificuldade você teve ao participar em atividades comunitárias (por exemplo, festividades,  atividades religiosas ou outra atividade) do mesmo modo que qualquer outra pessoa?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.2 - Quanta dificuldade você teve por causa de barreiras ou obstáculos no mundo à sua volta?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.3 - Quanta dificuldade você teve para viver com dignidade por causa das atitudes e ações de outros?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.4 - Quanto tempo você gastou com sua condição de saúde ou suas consequências?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.5 - Quanto você tem sido emocionalmente afetado por sua condição de saúde?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.6 - Quanto a sua saúde tem prejudicado financeiramente você ou sua família?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.7 - Quanta dificuldade sua família teve por causa da sua condição de saúde?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 2, 3, 4, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'D6.8 - Quanta dificuldade você teve para fazer as coisas por si mesmo(a) para relaxamento ou lazer?',
    'tipo': TipoPergunta.marcar,
    'pesos': [0, 1, 1, 2, 2, 99],
    'dominio': 'd6',
  },
  {
    'enunciado':
        'H1 - Em geral, nos últimos 30 dias, por quantos dias essas dificuldades estiveram presentes?',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'H2 - Nos últimos 30 dias, por quantos dias você esteve completamente incapaz de executar suas atividades usuais ou de trabalho por causa da sua condição de saúde?',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
  {
    'enunciado':
        'H3 - Nos últimos 30 dias, sem contar os dias que você esteve totalmente incapaz, por quantos dias você diminuiu ou reduziu suas atividades usuais ou de trabalho por causa da sua condição de saúde?',
    'tipo': TipoPergunta.extenso,
    'pesos': [],
    'dominio': '',
  },
];
