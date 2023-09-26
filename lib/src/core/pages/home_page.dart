import 'package:flutter/material.dart';
import 'package:valorant_guide/src/core/models/agent.dart';
import 'package:valorant_guide/src/core/pages/widgets/card_widget.dart';
import 'package:valorant_guide/src/core/pages/widgets/drawer_widget.dart';

import '../models/ability.dart';
import '../models/role.dart';

class HomePage extends StatefulWidget {
  final String title;

  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Agent> agents = [
    Agent(
      name: 'Brinstorm',
      role: Role.controller,
      urlImage: 'assets/agents/brimstone/agent.png',
      bio:
          'Vindo diretamente dos EUA, o arsenal orbital do Brimstone garante que o esquadrão dele sempre esteja em vantagem. Sua capacidade de oferecer utilitários com precisão e segurança faz dele um comandante inigualável na linha de frente.',
      abilities: [
        Ability(
            name: 'Q - Incendiário',
            description:
                "EQUIPE um lançador de granadas incendiárias. DISPARE para lançar uma granada que detona no chão, gerando uma zona de fogo que causa dano aos jogadores dentro dela.",
            imagePath: 'assets/agents/brimstone/q.png'),
        Ability(
            name: 'E - Fumaça Celeste',
            description:
                "EQUIPE um mapa tático. DISPARE para marcar os locais onde as nuvens de fumaça de Brimstone pousarão. Use o DISPARO ALTERNATIVO para confirmar, lançando nuvens de fumaça de longa duração que bloqueiam a visão na área selecionada.",
            imagePath: 'assets/agents/brimstone/e.png'),
        Ability(
            name: 'C - Sinalizador Estimulante',
            description:
                "EQUIPE um sinalizador estimulante. DISPARE para jogar o sinalizador diante de Brimstone. Ao pousar, o sinalizador criará um campo que concede Tiro Rápido aos jogadores.",
            imagePath: 'assets/agents/brimstone/c.png'),
        Ability(
            name: 'X - Ataque Orbital',
            description:
                "EQUIPE um mapa tático. DISPARE para lançar um ataque prolongado de laser orbital no local selecionado, causando muito dano ao longo do tempo aos jogadores na área selecionada.",
            imagePath: 'assets/agents/brimstone/x.png'),
      ],
    ),
    Agent(
      name: 'Phoenix',
      role: Role.duelist,
      urlImage: 'assets/agents/phoenix/agent.png',
      bio:
          'Chegando com tudo diretamente do Reino Unido, o poder estelar de Phoenix reluz em seu estilo de luta, incendiando o campo de batalha com luz e estilo. Tendo ajuda ou não, ele entra na luta como e quando achar que deve.',
      abilities: [
        Ability(
            name: 'Q - Bola Curva',
            description:
                "EQUIPE um orbe de chamas que avança em curva e detona pouco após o lançamento. DISPARE para curvá-lo para a esquerda, detonando e cegando qualquer jogador que vir o orbe. Use o DISPARO ALTERNATIVO para curvá-lo para a direita.",
            imagePath: 'assets/agents/phoenix/q.png'),
        Ability(
            name: 'E - Mãos Quentes',
            description:
                "EQUIPE uma bola de fogo. DISPARE para jogar a bola de fogo, que explode após um intervalo ou ao atingir o chão, criando uma zona duradoura de fogo que causa dano aos inimigos.",
            imagePath: 'assets/agents/phoenix/e.png'),
        Ability(
            name: 'C - Labareda',
            description:
                "EQUIPE uma parede de fogo. DISPARE para criar uma linha de chamas que avança, gerando uma parede de fogo que bloqueia a visão e causa dano a jogadores que passarem por ela. SEGURE O DISPARO para curvá-la na direção da mira.",
            imagePath: 'assets/agents/phoenix/c.png'),
        Ability(
            name: 'X - Renascimento',
            description:
                "INSTANTANEAMENTE coloca um marcador na localização de Phoenix. Com a habilidade ativa, morrer ou deixar o tempo acabar encerrarão a habilidade e trarão Phoenix de volta ao local marcado com Vida completa.",
            imagePath: 'assets/agents/phoenix/x.png'),
      ],
    ),
    Agent(
      name: 'Sage',
      role: Role.sentinel,
      urlImage: 'assets/agents/sage/agent.png',
      bio:
          'Como uma verdadeira fortaleza chinesa, Sage traz segurança para si mesma e para a equipe aonde quer que vá. Capaz de reviver aliados e rechaçar investidas agressivas, ela oferece um centro de calmaria em meio ao caos da batalha.',
      abilities: [
        Ability(
            name: 'Q - Orbe de Lentidão',
            description:
                "EQUIPE um orbe de lentidão. DISPARE para lançá-lo. O orbe detona ao pousar, criando um campo duradouro que desacelera os jogadores dentro dele.",
            imagePath: 'assets/agents/sage/q.png'),
        Ability(
            name: 'E - Orbe Curativo',
            description:
                "EQUIPE um orbe curativo. DISPARE com a mira sobre um aliado ferido para ativar uma cura ao longo do tempo. Use o DISPARO ALTERNATIVO enquanto Sage estiver ferida para ativar uma autocura ao longo do tempo.",
            imagePath: 'assets/agents/sage/e.png'),
        Ability(
            name: 'C - Orbe de Barreira',
            description:
                "EQUIPE um orbe de barreira. DISPARE para posicionar uma parede sólida. DISPARO ALTERNATIVO gira o marcador de alvo.",
            imagePath: 'assets/agents/sage/c.png'),
        Ability(
            name: 'X - Ressurreição',
            description:
                "EQUIPE uma habilidade de ressurreição. DISPARE com a mira sobre um aliado morto para começar a revivê-lo. Depois de uma breve canalização, o aliado voltará com a Vida completa.",
            imagePath: 'assets/agents/sage/x.png'),
      ],
    ),
    Agent(
      name: 'Sova',
      role: Role.initiator,
      urlImage: 'assets/agents/sova/agent.png',
      bio:
          'Nascido sob o eterno inverno das tundras russas, Sova rastreia, encontra e elimina inimigos com eficiência e precisão implacáveis. Seu arco personalizado e suas habilidades inigualáveis de reconhecimento garantem que nenhuma presa escape.',
      abilities: [
        Ability(
            name: 'Q - Flecha de Choque',
            description:
                "EQUIPE um arco com uma flecha de choque. DISPARE para lançar a flecha, que explode com o impacto causando dano aos jogadores próximos. SEGURE O DISPARO para estender o alcance do projétil. Use o DISPARO ALTERNATIVO para adicionar até dois ricochetes à flecha.",
            imagePath: 'assets/agents/sova/q.png'),
        Ability(
            name: 'E - Flecha Rastreadora',
            description:
                "EQUIPE um arco com uma flecha de reconhecimento. DISPARE para lançar a flecha, que é ativada mediante impacto e Revela a localização de quaisquer inimigos próximos da linha de visão. Inimigos podem destruí-la. SEGURE O DISPARO para estender o alcance do projétil. Use o DISPARO ALTERNATIVO para adicionar até dois ricochetes à flecha.",
            imagePath: 'assets/agents/sova/e.png'),
        Ability(
            name: 'C - Drone Coruja',
            description:
                "EQUIPE um drone coruja. DISPARE para acionar e pilotar o drone. Enquanto pilota o drone, DISPARE para atirar um dardo marcador. O dardo revelará a localização de qualquer jogador atingido. Inimigos podem destruir o Drone Coruja.",
            imagePath: 'assets/agents/sova/c.png'),
        Ability(
            name: 'X - Fúria do Caçador',
            description:
                "EQUIPE um arco com três disparos de longo alcance que perfuram paredes. DISPARE para atirar um raio de energia diante de Sova, causando dano e revelando a localização dos inimigos que estiverem na linha. A habilidade pode ser REPETIDA mais duas vezes enquanto o cronômetro de habilidade estiver ativo.",
            imagePath: 'assets/agents/sova/x.png'),
      ],
    ),
    Agent(
      name: 'Viper',
      role: Role.controller,
      urlImage: 'assets/agents/viper/agent.png',
      bio:
          'Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/viper/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/viper/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/viper/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/viper/x.png'),
      ],
    ),
    Agent(
      name: 'Cypher',
      role: Role.sentinel,
      urlImage: 'assets/agents/cypher/agent.png',
      bio:
          'Cypher, um vendedor de informações do Marrocos, é uma verdadeira rede de vigilância de um homem só que fica de olho em cada movimento dos inimigos. Nenhum segredo está a salvo. Nenhuma manobra passa despercebida. Cypher está sempre vigiando.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/cypher/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/cypher/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/cypher/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/cypher/x.png'),
      ],
    ),
    Agent(
      name: 'Reyna',
      role: Role.duelist,
      urlImage: 'assets/agents/reyna/agent.png',
      bio:
          'Criada no coração do México, Reyna domina o combate individual, destacando-se a cada abate efetuado. Sua capacidade só é limitada por sua própria perícia, tornando-a bastante dependente de desempenho.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/reyna/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/reyna/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/reyna/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/reyna/x.png'),
      ],
    ),
    Agent(
      name: 'Killjoy',
      role: Role.sentinel,
      urlImage: 'assets/agents/killjoy/agent.png',
      bio:
          'Killjoy, uma alemã genial, defende posições-chave no campo de batalha facilmente com seu arsenal de invenções. Se o dano causado por seu equipamento não der cabo dos inimigos, os efeitos negativos de seus queridos robôs darão conta do recado.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/killjoy/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/killjoy/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/killjoy/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/killjoy/x.png'),
      ],
    ),
    Agent(
      name: 'Breach',
      role: Role.initiator,
      urlImage: 'assets/agents/breach/agent.png',
      bio:
          'Breach, o homem-biônico sueco, dispara poderosos jatos cinéticos para forçar a abertura de um caminho pelo território inimigo. O dano e a interrupção que ele causa garantem que nenhuma luta seja justa.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/breach/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/breach/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/breach/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/breach/x.png'),
      ],
    ),
    Agent(
      name: 'Omen',
      role: Role.controller,
      urlImage: 'assets/agents/omen/agent.png',
      bio:
          'Omen, uma lembrança fantasmagórica, caça nas sombras. Ele cega os inimigos, teleporta-se pelo campo e deixa a paranoia assumir o controle enquanto o adversário tenta descobrir de onde virá seu próximo ataque.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/omen/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/omen/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/omen/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/omen/x.png'),
      ],
    ),
    Agent(
      name: 'Jett',
      role: Role.duelist,
      urlImage: 'assets/agents/jett/agent.png',
      bio:
          'Representando a Coreia do Sul, sua terra natal, Jett tem um estilo de luta ágil e evasivo que permite que ela assuma riscos como ninguém. Ela corre em meio a qualquer confronto, cortando os inimigos antes mesmo que eles percebam quem ou o que os atingiu.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/jett/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/jett/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/jett/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/jett/x.png'),
      ],
    ),
    Agent(
      name: 'Raze',
      role: Role.duelist,
      urlImage: 'assets/agents/raze/agent.png',
      bio:
          'Raze chega do Brasil com uma explosão de carisma e armas enormes. Com seu estilo de jogo "porradeiro", ela é craque em desentocar inimigos entrincheirados e limpar espaços apertados com uma bela dose de BUUUM!',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/raze/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/raze/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/raze/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/raze/x.png'),
      ],
    ),
    Agent(
      name: 'Skye',
      role: Role.initiator,
      urlImage: 'assets/agents/skye/agent.png',
      bio:
          'Mandando um salve direto da Austrália, Skye e sua equipe de feras desbravam territórios hostis. Com seus poderes de cura e suas criações que partem pra cima dos inimigos, qualquer equipe ficará mais forte e mais segura tendo Skye como aliada.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/skye/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/skye/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/skye/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/skye/x.png'),
      ],
    ),
    Agent(
      name: 'Yoru',
      role: Role.duelist,
      urlImage: 'assets/agents/yoru/agent.png',
      bio:
          'Yoru, nativo do Japão, abre fendas na realidade para infiltrar as linhas inimigas sem ser visto. Ele usa tanto artimanhas quanto táticas agressivas, e os alvos são abatidos sem saber de onde o ataque veio.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/yoru/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/yoru/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/yoru/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/yoru/x.png'),
      ],
    ),
    Agent(
      name: 'Astra',
      role: Role.controller,
      urlImage: 'assets/agents/astra/agent.png',
      bio:
          'Astra, a Agente ganense, utiliza energias cósmicas para moldar o campo de batalha a seu bel-prazer. Com total domínio da sua forma astral e um talento estratégico nato, ela está sempre anos-luz à frente dos inimigos.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/astra/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/astra/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/astra/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/astra/x.png'),
      ],
    ),
    Agent(
      name: 'Kayo',
      role: Role.initiator,
      urlImage: 'assets/agents/kayo/agent.png',
      bio:
          'KAY/O é uma máquina de guerra construída com um único propósito: neutralizar Radiantes. Ele é capaz de Suprimir habilidades inimigas, anulando a capacidade de contra-ataque dos adversários e dando a si e a seus aliados uma vantagem essencial em combate.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/kayo/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/kayo/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/kayo/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/kayo/x.png'),
      ],
    ),
    Agent(
      name: 'Chamber',
      role: Role.sentinel,
      urlImage: 'assets/agents/chamber/agent.png',
      bio:
          'Bem-vestido e armado até os dentes, o criador de armas francês Chamber coloca os inimigos para correr com precisão mortal. Use e abuse do arsenal personalizado dele para segurar posições e abater inimigos de longe, criando a defesa perfeita para qualquer plano.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/chamber/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/chamber/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/chamber/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/chamber/x.png'),
      ],
    ),
    Agent(
      name: 'Neon',
      role: Role.duelist,
      urlImage: 'assets/agents/neon/agent.png',
      bio:
          'Neon, nossa Agente filipina, avança em velocidades incríveis, descarregando surtos de radiância bioelétrica tão rapidamente quanto seu corpo consegue gerá-los. Ela corre à frente para pegar os inimigos de surpresa, abatendo-os mais rápido do que um raio.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/neon/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/neon/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/neon/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/neon/x.png'),
      ],
    ),
    Agent(
      name: 'Fade',
      role: Role.initiator,
      urlImage: 'assets/agents/fade/agent.png',
      bio:
          'Fade, uma caçadora de recompensas turca, usa o poder dos pesadelos para capturar os segredos dos inimigos. Personificando o próprio terror, ela persegue os alvos e revela seus medos mais profundos para, depois, destruí-los na escuridão.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/fade/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/fade/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/fade/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/fade/x.png'),
      ],
    ),
    Agent(
      name: 'Harbor',
      role: Role.controller,
      urlImage: 'assets/agents/harbor/agent.png',
      bio:
          'Vindo do litoral indiano, Harbor entra em campo com a força da tormenta, empunhando tecnologia ancestral com domínio sobre a água. Ele libera corredeiras espumantes e ondas esmagadoras para proteger seus aliados ou atacar aqueles que se opõem a ele.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/harbor/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/harbor/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/harbor/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/harbor/x.png'),
      ],
    ),
    Agent(
      name: 'Gekko',
      role: Role.initiator,
      urlImage: 'assets/agents/gekko/agent.png',
      bio:
          'Gekko, de Los Angeles, lidera um grupo muito unido de criaturas caóticas. Seus amigos atropelam tudo, tirando os inimigos do caminho. Depois, Gekko corre atrás deles para reagrupá-los e reiniciar o processo.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/gekko/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/gekko/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/gekko/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/gekko/x.png'),
      ],
    ),
    Agent(
      name: 'Deadlock',
      role: Role.sentinel,
      urlImage: 'assets/agents/deadlock/agent.png',
      bio:
          'A agente norueguesa Deadlock posiciona uma gama de nanofios de alta tecnologia para proteger o campo de batalha até mesmo do ataque mais letal. Ninguém escapa do seu olhar vigilante. Ninguém sobrevive à sua ferocidade implacável.',
      abilities: [
        Ability(
            name: 'Q - ',
            description: "",
            imagePath: 'assets/agents/deadlock/q.png'),
        Ability(
            name: 'E - ',
            description: "",
            imagePath: 'assets/agents/deadlock/e.png'),
        Ability(
            name: 'C - ',
            description: "",
            imagePath: 'assets/agents/deadlock/c.png'),
        Ability(
            name: 'X - ',
            description: "",
            imagePath: 'assets/agents/deadlock/x.png'),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(fontFamily: 'Tungsten', fontSize: 30),
        ),
        centerTitle: true,
      ),
      drawer: const DrawerWidget(),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            ),
            itemCount: agents.length,
            itemBuilder: (BuildContext context, int index) {
              final agent = agents[index % agents.length];
              return GestureDetector(
                child: CardWidget(agent: agent),
                onTap: () {
                  Navigator.pushNamed(context, '/details', arguments: agent);
                },
              );
            },
          );
        },
      ),
    );
  }
}
