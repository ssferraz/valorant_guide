import 'package:flutter/material.dart';
import 'package:valorant_guide/src/core/models/agent.dart';
import 'package:valorant_guide/src/core/pages/widgets/card_widget.dart';
import 'package:valorant_guide/src/core/pages/widgets/drawer_widget.dart';

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
        abilities: []),
    Agent(
        name: 'Phoenix',
        role: Role.duelist,
        urlImage: 'assets/agents/phoenix/agent.png',
        bio:
            'Chegando com tudo diretamente do Reino Unido, o poder estelar de Phoenix reluz em seu estilo de luta, incendiando o campo de batalha com luz e estilo. Tendo ajuda ou não, ele entra na luta como e quando achar que deve.',
        abilities: []),
    Agent(
        name: 'Sage',
        role: Role.sentinel,
        urlImage: 'assets/agents/sage/agent.png',
        bio:
            'Como uma verdadeira fortaleza chinesa, Sage traz segurança para si mesma e para a equipe aonde quer que vá. Capaz de reviver aliados e rechaçar investidas agressivas, ela oferece um centro de calmaria em meio ao caos da batalha.',
        abilities: []),
    Agent(
        name: 'Sova',
        role: Role.initiator,
        urlImage: 'assets/agents/sova/agent.png',
        bio:
            'Nascido sob o eterno inverno das tundras russas, Sova rastreia, encontra e elimina inimigos com eficiência e precisão implacáveis. Seu arco personalizado e suas habilidades inigualáveis de reconhecimento garantem que nenhuma presa escape.',
        abilities: []),
    Agent(
        name: 'Viper',
        role: Role.controller,
        urlImage: 'assets/agents/viper/agent.png',
        bio:
            'Viper, a química dos Estados Unidos, emprega uma variedade de dispositivos químicos venenosos para controlar o campo de batalha e prejudicar a visão do inimigo. Se as toxinas não matarem a presa, seus jogos mentais certamente o farão.',
        abilities: []),
    Agent(
        name: 'Cypher',
        role: Role.sentinel,
        urlImage: 'assets/agents/cypher/agent.png',
        bio:
            'Cypher, um vendedor de informações do Marrocos, é uma verdadeira rede de vigilância de um homem só que fica de olho em cada movimento dos inimigos. Nenhum segredo está a salvo. Nenhuma manobra passa despercebida. Cypher está sempre vigiando.',
        abilities: []),
    Agent(
        name: 'Reyna',
        role: Role.duelist,
        urlImage: 'assets/agents/reyna/agent.png',
        bio:
            'Criada no coração do México, Reyna domina o combate individual, destacando-se a cada abate efetuado. Sua capacidade só é limitada por sua própria perícia, tornando-a bastante dependente de desempenho.',
        abilities: []),
    Agent(
        name: 'Killjoy',
        role: Role.sentinel,
        urlImage: 'assets/agents/killjoy/agent.png',
        bio:
            'Killjoy, uma alemã genial, defende posições-chave no campo de batalha facilmente com seu arsenal de invenções. Se o dano causado por seu equipamento não der cabo dos inimigos, os efeitos negativos de seus queridos robôs darão conta do recado.',
        abilities: []),
    Agent(
        name: 'Breach',
        role: Role.initiator,
        urlImage: 'assets/agents/breach/agent.png',
        bio:
            'Breach, o homem-biônico sueco, dispara poderosos jatos cinéticos para forçar a abertura de um caminho pelo território inimigo. O dano e a interrupção que ele causa garantem que nenhuma luta seja justa.',
        abilities: []),
    Agent(
        name: 'Omen',
        role: Role.controller,
        urlImage: 'assets/agents/omen/agent.png',
        bio:
            'Cypher, um vendedor de informações do Marrocos, é uma verdadeira rede de vigilância de um homem só que fica de olho em cada movimento dos inimigos. Nenhum segredo está a salvo. Nenhuma manobra passa despercebida. Cypher está sempre vigiando.',
        abilities: []),
    Agent(
        name: 'Jett',
        role: Role.duelist,
        urlImage: 'assets/agents/jett/agent.png',
        bio:
            'Representando a Coreia do Sul, sua terra natal, Jett tem um estilo de luta ágil e evasivo que permite que ela assuma riscos como ninguém. Ela corre em meio a qualquer confronto, cortando os inimigos antes mesmo que eles percebam quem ou o que os atingiu.',
        abilities: []),
    Agent(
        name: 'Raze',
        role: Role.duelist,
        urlImage: 'assets/agents/raze/agent.png',
        bio:
            'Raze chega do Brasil com uma explosão de carisma e armas enormes. Com seu estilo de jogo "porradeiro", ela é craque em desentocar inimigos entrincheirados e limpar espaços apertados com uma bela dose de BUUUM!',
        abilities: []),
    Agent(
        name: 'Skye',
        role: Role.initiator,
        urlImage: 'assets/agents/skye/agent.png',
        bio:
            'Mandando um salve direto da Austrália, Skye e sua equipe de feras desbravam territórios hostis. Com seus poderes de cura e suas criações que partem pra cima dos inimigos, qualquer equipe ficará mais forte e mais segura tendo Skye como aliada.',
        abilities: []),
    Agent(
        name: 'Yoru',
        role: Role.duelist,
        urlImage: 'assets/agents/yoru/agent.png',
        bio:
            'Yoru, nativo do Japão, abre fendas na realidade para infiltrar as linhas inimigas sem ser visto. Ele usa tanto artimanhas quanto táticas agressivas, e os alvos são abatidos sem saber de onde o ataque veio.',
        abilities: []),
    Agent(
        name: 'Astra',
        role: Role.controller,
        urlImage: 'assets/agents/astra/agent.png',
        bio:
            'Astra, a Agente ganense, utiliza energias cósmicas para moldar o campo de batalha a seu bel-prazer. Com total domínio da sua forma astral e um talento estratégico nato, ela está sempre anos-luz à frente dos inimigos.',
        abilities: []),
    Agent(
        name: 'Kayo',
        role: Role.initiator,
        urlImage: 'assets/agents/kayo/agent.png',
        bio:
            'KAY/O é uma máquina de guerra construída com um único propósito: neutralizar Radiantes. Ele é capaz de Suprimir habilidades inimigas, anulando a capacidade de contra-ataque dos adversários e dando a si e a seus aliados uma vantagem essencial em combate.',
        abilities: []),
    Agent(
        name: 'Chamber',
        role: Role.sentinel,
        urlImage: 'assets/agents/chamber/agent.png',
        bio:
            'Bem-vestido e armado até os dentes, o criador de armas francês Chamber coloca os inimigos para correr com precisão mortal. Use e abuse do arsenal personalizado dele para segurar posições e abater inimigos de longe, criando a defesa perfeita para qualquer plano.',
        abilities: []),
    Agent(
        name: 'Neon',
        role: Role.duelist,
        urlImage: 'assets/agents/neon/agent.png',
        bio:
            'Neon, nossa Agente filipina, avança em velocidades incríveis, descarregando surtos de radiância bioelétrica tão rapidamente quanto seu corpo consegue gerá-los. Ela corre à frente para pegar os inimigos de surpresa, abatendo-os mais rápido do que um raio.',
        abilities: []),
    Agent(
        name: 'Fade',
        role: Role.initiator,
        urlImage: 'assets/agents/fade/agent.png',
        bio:
            'Fade, uma caçadora de recompensas turca, usa o poder dos pesadelos para capturar os segredos dos inimigos. Personificando o próprio terror, ela persegue os alvos e revela seus medos mais profundos para, depois, destruí-los na escuridão.',
        abilities: []),
    Agent(
        name: 'Harbor',
        role: Role.controller,
        urlImage: 'assets/agents/harbor/agent.png',
        bio:
            'Vindo do litoral indiano, Harbor entra em campo com a força da tormenta, empunhando tecnologia ancestral com domínio sobre a água. Ele libera corredeiras espumantes e ondas esmagadoras para proteger seus aliados ou atacar aqueles que se opõem a ele.',
        abilities: []),
    Agent(
        name: 'Gekko',
        role: Role.initiator,
        urlImage: 'assets/agents/gekko/agent.png',
        bio:
            'Gekko, de Los Angeles, lidera um grupo muito unido de criaturas caóticas. Seus amigos atropelam tudo, tirando os inimigos do caminho. Depois, Gekko corre atrás deles para reagrupá-los e reiniciar o processo.',
        abilities: []),
    Agent(
        name: 'Deadlock',
        role: Role.sentinel,
        urlImage: 'assets/agents/deadlock/agent.png',
        bio:
            'A agente norueguesa Deadlock posiciona uma gama de nanofios de alta tecnologia para proteger o campo de batalha até mesmo do ataque mais letal. Ninguém escapa do seu olhar vigilante. Ninguém sobrevive à sua ferocidade implacável.',
        abilities: []),
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
        body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
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
        ));
  }
}
