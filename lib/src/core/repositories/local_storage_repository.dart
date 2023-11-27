import 'package:valorant_guide/src/core/models/ability.dart';
import 'package:valorant_guide/src/core/models/agent.dart';
import 'package:valorant_guide/src/core/models/role.dart';

class LocalStorageRepository {
  static List<Agent> getAgents() {
    final agents = [
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
              name: 'Q - Nuvem Venenosa',
              description:
                  "EQUIPE um emissor de gás. DISPARE para jogar o emissor, que persiste até o fim da rodada. REPITA para criar uma nuvem de gás tóxico que drena combustível. A habilidade pode ser REPETIDA mais de uma vez e pode ser recolhida para ser REPOSICIONADA.",
              imagePath: 'assets/agents/viper/q.png'),
          Ability(
              name: 'E - Cortina Tóxica',
              description:
                  "EQUIPE um lançador de emissores de gás. DISPARE para lançar uma longa linha de emissores de gás. REPITA a habilidade para criar uma parede alta de gás tóxico que drena combustível. A habilidade pode ser REPETIDA mais de uma vez.",
              imagePath: 'assets/agents/viper/e.png'),
          Ability(
              name: 'C - Veneno de Cobra',
              description:
                  "EQUIPE um lançador químico. DISPARE para lançar um cilindro que se rompe ao atingir o chão, gerando uma zona química duradoura que causa dano e reduz a velocidade dos inimigos.",
              imagePath: 'assets/agents/viper/c.png'),
          Ability(
              name: 'X - Poço Peçonhento',
              description:
                  "EQUIPE um borrifador químico. DISPARE para borrifar uma nuvem química em todas as direções ao redor de Viper, criando uma grande nuvem que reduz o alcance de visão e a Vida máxima dos jogadores dentro dela.",
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
              name: 'Q - Jaula Cybernética',
              description:
                  "INSTANTANEAMENTE joga a jaula cibernética diante de Cypher. Ative para criar uma zona que bloqueia a visão e reduz a velocidade de inimigos que passarem por ela.",
              imagePath: 'assets/agents/cypher/q.png'),
          Ability(
              name: 'E - Câmera de Vigilância',
              description:
                  "EQUIPE uma Câmera de Vigilância. DISPARE para colocar a câmera no local-alvo. REPITA a habilidade para controlar a visão da câmera. Enquanto controla a câmera, DISPARE para lançar um dardo marcador. O dardo revelará a localização de qualquer jogador atingido. A câmera pode ser recuperada e REPOSICIONADA.",
              imagePath: 'assets/agents/cypher/e.png'),
          Ability(
              name: 'C - Fio-armadilha',
              description:
                  "EQUIPE um fio-armadilha. DISPARE para instalar um fio acionador oculto e destrutível no local-alvo, criando uma linha entre o local e a parede oposta. Jogadores inimigos que passarem por um fio e não destruírem o dispositivo a tempo ficarão imobilizados, revelados e estonteados depois de um breve intervalo. A habilidade pode ser recolhida para ser REPOSICIONADA.",
              imagePath: 'assets/agents/cypher/c.png'),
          Ability(
              name: 'X - Assalto Neural',
              description:
                  "Use INSTANTANEAMENTE num jogador inimigo morto na sua mira para revelar a localização de todos os jogadores inimigos ainda vivos.",
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
              name: 'Q - Devorar',
              description:
                  "Inimigos abatidos por Reyna deixam Orbes de Alma que duram 3s. INSTANTANEAMENTE consome um Orbe de Alma próximo, curando-se de forma rápida por um curto período. A quantidade de Vida concedida por esta habilidade que ultrapassar 100 decairá ao longo do tempo. Se a habilidade IMPERATRIZ estiver ativa, esta habilidade será conjurada automaticamente e não consumirá o orbe.",
              imagePath: 'assets/agents/reyna/q.png'),
          Ability(
              name: 'E - Dispensar',
              description:
                  "INSTANTANEAMENTE consome um Orbe de Alma próximo, ficando inatingível por um curto período. Também se torna invisível se a habilidade IMPERATRIZ estiver ativa.",
              imagePath: 'assets/agents/reyna/e.png'),
          Ability(
              name: 'C - Olhar Voraz',
              description:
                  "EQUIPE um olho etéreo e destrutível. ATIVE para lançá-lo adiante a uma curta distância. O olho deixará com visão turva todos os inimigos que olharem para ele.",
              imagePath: 'assets/agents/reyna/c.png'),
          Ability(
              name: 'X - Imperatriz',
              description:
                  "INSTANTANEAMENTE entra em estado de frenesi, aumentando de forma drástica as velocidades de disparo, equipamento e recarga de munição. Renova a duração ao fazer um abate.",
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
              name: 'Q - Robô de Alarme',
              description:
                  "EQUIPE um Robô de Alarme oculto. DISPARE para ativar um robô que persegue os inimigos que entram no alcance. Ao se aproximar do alvo, o robô explode, causando dano e aplicando Vulnerável. SEGURE EQUIPAR para retirar um robô ativado.",
              imagePath: 'assets/agents/killjoy/q.png'),
          Ability(
              name: 'E - Torreta',
              description:
                  "EQUIPE uma Torreta. DISPARE para ativar uma torreta que atira em inimigos em um cone de 180°. SEGURE EQUIPAR para retirar a torreta ativada.",
              imagePath: 'assets/agents/killjoy/e.png'),
          Ability(
              name: 'C - Nanoenxame',
              description:
                  "EQUIPE uma granada Nanoenxame. DISPARE para lançar a granada. Ao atingir uma superfície, a Nanoenxame fica oculta. ATIVE a Nanoenxame para acionar um enxame de nanorrobôs que causam dano.",
              imagePath: 'assets/agents/killjoy/c.png'),
          Ability(
              name: 'X - Confinamento',
              description:
                  "EQUIPE o dispositivo de Confinamento. DISPARE para ativá-lo. Após um longo processo de ativação, o dispositivo detém todos os inimigos no raio de alcance. O dispositivo pode ser destruído pelos inimigos.",
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
              name: 'Q - Estopim',
              description:
                  "EQUIPE uma carga cegante. DISPARE a carga para armar um jato de ação rápida pela parede. A carga é detonada, cegando todos os jogadores que estiverem olhando para ela.",
              imagePath: 'assets/agents/breach/q.png'),
          Ability(
              name: 'E - Falha Tectônica',
              description:
                  "EQUIPE um impacto sísmico. SEGURE O DISPARO para aumentar a distância. SOLTE para iniciar o terremoto, estonteando todos os jogadores na zona e numa linha reta até a zona.",
              imagePath: 'assets/agents/breach/e.png'),
          Ability(
              name: 'C - Pós-choque',
              description:
                  "EQUIPE uma carga de fusão. DISPARE a carga para armar um jato de ação lenta pela parede. O jato causa muito dano a todos que estiverem na área de efeito.",
              imagePath: 'assets/agents/breach/c.png'),
          Ability(
              name: 'X - Onda Trovejante',
              description:
                  "EQUIPE uma carga sísmica. Dispare para lançar um terremoto em cascata por todo o terreno num grande cone. O terremoto estonteia e derruba todos que estiverem na área de efeito.",
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
              name: 'Q - Paranoia',
              description:
                  "INSTANTANEAMENTE emite um projétil sombrio adiante, reduzindo brevemente o alcance de visão dos jogadores tocados. O projétil atravessa paredes.",
              imagePath: 'assets/agents/omen/q.png'),
          Ability(
              name: 'E - Manto Sombrio',
              description:
                  "EQUIPE um orbe sombrio e entre em um universo distorcido para posicionar os orbes. PRESSIONE o botão de habilidade para lançar o orbe no local marcado, criando uma esfera de sombra duradoura que bloqueia a visão. SEGURE O DISPARO enquanto mira para afastar o marcador. SEGURE O DISPARO ALTERNATIVO enquanto mira para aproximar o marcador. PRESSIONE RECARREGAR para alternar para a visão de mira normal.",
              imagePath: 'assets/agents/omen/e.png'),
          Ability(
              name: 'C - Passos Tenebrosos',
              description:
                  "EQUIPE uma habilidade de passos sombrios e olhe o indicador de alcance. DISPARE para começar uma breve canalização e, então, teleporte-se para o local marcado.",
              imagePath: 'assets/agents/omen/c.png'),
          Ability(
              name: 'X - Salto das Sombras',
              description:
                  "EQUIPE um mapa tático. DISPARE para começar a se teleportar ao local selecionado. Enquanto se teleporta, Omen aparecerá como um Vulto que pode ser destruído por qualquer inimigo para cancelar o teleporte.",
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
              name: 'Q - Corrente Ascendente',
              description: "INSTANTANEAMENTE impele Jett bem alto no ar.",
              imagePath: 'assets/agents/jett/q.png'),
          Ability(
              name: 'E - Brisa de Impulso',
              description:
                  "ATIVE para preparar uma rajada de vento por tempo limitado. REPITA a habilidade para lançar Jett na direção do movimento atual dela. Se estiver parada, Jett será lançada para a frente. A carga de Brisa de Impulso é redefinida a cada dois abates.",
              imagePath: 'assets/agents/jett/e.png'),
          Ability(
              name: 'C - Erupção das Brumas',
              description:
                  "Lança INSTANTANEAMENTE um projétil que se expande numa breve nuvem que obscurece a visão ao bater numa superfície. SEGURE o botão da habilidade para curvar a fumaça na direção da sua mira.",
              imagePath: 'assets/agents/jett/c.png'),
          Ability(
              name: 'X - Tormenta de Aço',
              description:
                  "EQUIPE um conjunto de facas de arremesso altamente precisas. DISPARE para lançar uma única faca contra o alvo. As facas são recarregadas ao matar um oponente. Use o DISPARO ALTERNATIVO para jogar todas as facas restantes contra o alvo, porém elas não são recarregadas ao matar um oponente.",
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
              name: 'Q - Carga de Explosivos',
              description:
                  "INSTANTANEAMENTE joga uma Carga de Explosivos que gruda em superfícies. REUSE a habilidade depois de instalar para detonar, causando dano e movendo tudo que for atingido. Raze não sofre dano ao ser atingida pelo efeito desta habilidade, mas ainda pode sofrer dano de queda se for arremessada para longe.",
              imagePath: 'assets/agents/raze/q.png'),
          Ability(
              name: 'E - Cartuchos de Tinta',
              description:
                  "EQUIPE uma granada múltipla. DISPARE para jogar a granada, que causa dano e cria submunições, cada uma causando dano a qualquer um que estiver no alcance. Use o DISPARO ALTERNATIVO para arremessar a curta distância. A carga dos Cartuchos de Tinta é redefinida a cada dois abates.",
              imagePath: 'assets/agents/raze/e.png'),
          Ability(
              name: 'C - Bumba',
              description:
                  "EQUIPE um Bumba. DISPARE para lançar o robô, que avança em linha reta no chão, ricocheteando nas paredes. O Bumba trava ao detectar inimigos no cone frontal e os persegue, explodindo e causando muito dano se alcançá-los.",
              imagePath: 'assets/agents/raze/c.png'),
          Ability(
              name: 'X - Estraga-prazeres',
              description:
                  "EQUIPE um lança-mísseis. DISPARE um foguete que causa dano devastador em área ao fazer contato com qualquer coisa.",
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
              name: 'Q - Predador Explosivo',
              description:
                  "EQUIPE um amuleto de lobo-da-tasmânia. DISPARE para enviar e controlar esse predador. Enquanto estiver no controle, DISPARE para saltar para a frente. O lobo gera uma explosão e causa dano aos inimigos diretamente atingidos.",
              imagePath: 'assets/agents/skye/q.png'),
          Ability(
              name: 'E - Luz Desbravadora',
              description:
                  "EQUIPE um amuleto de falcão. DISPARE para enviá-lo. SEGURE O DISPARO para guiar o falcão na direção da sua mira. REPITA a habilidade enquanto ele estiver voando para transformá-lo em um feixe de luz que gera uma confirmação de hit caso um inimigo esteja dentro do alcance ou na linha de visão.",
              imagePath: 'assets/agents/skye/e.png'),
          Ability(
              name: 'C - Reflorescer',
              description:
                  "EQUIPE um amuleto de cura. SEGURE O DISPARO para canalizar, curando aliados dentro do alcance e na sua linha de visão. Esta habilidade pode ser repetida até a reserva de cura ser esgotada. Skye não pode curar a si mesma.",
              imagePath: 'assets/agents/skye/c.png'),
          Ability(
              name: 'X - Rastreadores',
              description:
                  "EQUIPE um amuleto de Rastreador. DISPARE para enviar três Rastreadores que localizarão os três inimigos mais próximos. Se um Rastreador alcançar um alvo, causará Visão Turva a ele. Inimigos podem destruir os Rastreadores.",
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
              name: 'Q - Ponto Cego',
              description:
                  "EQUIPE para arrancar um fragmento dimensional instável da realidade. DISPARE para lançar o fragmento, ativando um clarão que se dissipa ao atingir uma superfície sólida.",
              imagePath: 'assets/agents/yoru/q.png'),
          Ability(
              name: 'E - Passagem Dimensional',
              description:
                  "EQUIPE um fluxo dimensional. DISPARE para lançá-lo à frente. Use o DISPARO ALTERNATIVO para posicionar um fluxo imóvel. ATIVE para se teleportar até ele. USE para acionar um teleporte falso.",
              imagePath: 'assets/agents/yoru/e.png'),
          Ability(
              name: 'C - Distração',
              description:
                  "EQUIPE um eco dimensional que se transforma em uma cópia do Yoru quando ativado. DISPARE para ativar a cópia e fazê-la avançar. Use o MODO SECUNDÁRIO para posicionar um eco inativo. USE para transformar o eco inativo em uma cópia e fazê-la avançar. As cópias explodem e cegam os inimigos quando destruídas por eles.",
              imagePath: 'assets/agents/yoru/c.png'),
          Ability(
              name: 'X - Espionagem Dimensional',
              description:
                  "EQUIPE uma máscara para olhar por entre as dimensões. DISPARE para entrar na dimensão do Yoru, onde você não poderá ser afetado nem visto pelos inimigos lá fora. REATIVE para sair da dimensão do Yoru mais cedo.",
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
              name: 'Q - Pulso Nova',
              description:
                  "Posicione Estrelas na Forma Astral (X) ATIVE uma Estrela para detonar um Pulso Nova. O Pulso Nova carrega brevemente e depois estoura, causando concussão a todos os jogadores na área.",
              imagePath: 'assets/agents/astra/q.png'),
          Ability(
              name: 'E - Nebulosa',
              description:
                  "Posicione Estrelas na Forma Astral (X). ATIVE uma Estrela para transformá-la em uma Nebulosa (fumaça). USE uma Estrela para dissipá-la, retornando a Estrela para ser posicionada em um novo local após um período. Dissipar forma brevemente uma Nebulosa falsa na localização da Estrela antes de retornar.",
              imagePath: 'assets/agents/astra/e.png'),
          Ability(
              name: 'C - Poço Gravitacional',
              description:
                  "Posicione Estrelas na Forma Astral (X) ATIVE uma Estrela para formar um Poço Gravitacional. Jogadores na área são puxados em direção ao centro antes de ele explodir, deixando frágeis todos que ainda estão presos no centro.",
              imagePath: 'assets/agents/astra/c.png'),
          Ability(
              name: 'X - Forma Astral / Divisa Cósmica',
              description:
                  "ATIVE para entrar na Forma Astral, em que você pode posicionar Estrelas com o DISPARO. As Estrelas podem ser reativadas depois para serem transformadas em Pulso Nova, Nebulosa ou Poço Gravitacional. Quando Divisa Cósmica estiver carregada, use o DISPARO ALTERNATIVO na Forma Astral para começar a mirar e, depois, o DISPARO para escolher dois locais. Uma Divisa Cósmica infinita surge e conecta os pontos selecionados. A Divisa Cósmica bloqueia disparos e abafa muito o som.",
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
              name: 'Q - Granada/Clarão',
              description:
                  "EQUIPE uma granada de clarão. DISPARE para jogá-la por cima. Use o DISPARO ALTERNATIVO para arremessar a curta distância uma versão mais fraca que explode mais rápido. A granada de clarão explode após um curto período, Cegando qualquer um que estiver na linha de visão.",
              imagePath: 'assets/agents/kayo/q.png'),
          Ability(
              name: 'E - Ponto/Zero',
              description:
                  "EQUIPE uma lâmina de supressão. DISPARE para lançar. A lâmina se fixa à primeira superfície que atingir e explode, Suprimindo qualquer um que estiver dentro do raio da explosão. Inimigos podem destruir a lâmina.",
              imagePath: 'assets/agents/kayo/e.png'),
          Ability(
              name: 'C - Frag/mento',
              description:
                  "EQUIPE um fragmento explosivo. DISPARE para lançá-lo. O fragmento se fixa ao chão e explode várias vezes, causando dano quase letal no centro de cada explosão.",
              imagePath: 'assets/agents/kayo/c.png'),
          Ability(
              name: 'X - Anular/CMD',
              description:
                  "INSTANTANEAMENTE sobrecarrega com energia de Radianita polarizada que emite grandes pulsos energéticos em um raio enorme a partir de onde KAY/O estiver. Inimigos atingidos pelos pulsos são Suprimidos por um curto período. Enquanto estiver sobrecarregado, KAY/O recebe Estimulante de Combate e pode ser reestabilizado se for abatido.",
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
              name: 'Q - Caçador de Cabeças',
              description:
                  "ATIVE para equipar uma pistola pesada. Use o DISPARO ALTERNATIVO com a pistola equipada para mirar.",
              imagePath: 'assets/agents/chamber/q.png'),
          Ability(
              name: 'E - Rendezvous',
              description:
                  "EQUIPE uma âncora de teleporte. DISPARE para posicioná-la no chão. Enquanto estiver no chão e dentro do alcance da âncora, REATIVE para teleportar rapidamente até a âncora. A âncora pode ser recuperada para ser REPOSICIONADA.",
              imagePath: 'assets/agents/chamber/e.png'),
          Ability(
              name: 'C - Marca Registrada',
              description:
                  "EQUIPE uma armadilha que busca por inimigos. DISPARE para posicioná-la no chão. Quando um inimigo visível entra no alcance, a armadilha inicia uma contagem regressiva e desestabiliza o terreno ao redor, criando um campo duradouro que Desacelera os jogadores dentro dele. A armadilha pode ser recuperada para ser REPOSICIONADA.",
              imagePath: 'assets/agents/chamber/c.png'),
          Ability(
              name: 'X - Tour de Force',
              description:
                  "ATIVE para invocar um poderoso fuzil de precisão personalizado que abate um inimigo com qualquer acerto na parte superior do corpo. Use o DISPARO ALTERNATIVO para mirar. Abater um inimigo cria um campo duradouro que Desacelera os jogadores dentro dele.",
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
              name: 'Q - Ricochete Elétrico',
              description:
                  "INSTANTANEAMENTE arremessa um raio de energia que ricocheteia uma vez. Ao atingir cada superfície, o raio eletrifica o chão abaixo dele com uma explosão.",
              imagePath: 'assets/agents/neon/q.png'),
          Ability(
              name: 'E - Equipamento Voltaico',
              description:
                  "INSTANTANEAMENTE canaliza o poder de Neon para receber velocidade aumentada. Ao atingir a carga máxima, use o DISPARO ALTERNATIVO para acionar um deslize elétrico. O carregamento é redefinido a cada dois abates.",
              imagePath: 'assets/agents/neon/e.png'),
          Ability(
              name: 'C - Via Expressa',
              description:
                  "DISPARE duas linhas de energia no chão à frente. As linhas se estendem por uma curta distância ou até atingirem uma superfície. Elas se tornam paredes de eletricidade estática que bloqueiam a visão e causam dano aos inimigos que as atravessarem.",
              imagePath: 'assets/agents/neon/c.png'),
          Ability(
              name: 'X - Sobrecarga',
              description:
                  "Neon libera todo o seu poder e velocidade por um curto período. DISPARE para canalizar isso em um raio elétrico mortal com alta precisão de movimento. A duração é redefinida com cada abate.",
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
              name: 'Q - Clausura',
              description:
                  "EQUIPE um nódulo de puro temor. DISPARE para arremessá-lo. O nódulo cairá depois de um determinado tempo. REPITA a habilidade para soltá-lo antecipadamente. Esse nódulo se rompe ao impacto, enclausurando inimigos próximos. Inimigos enclausurados sofrem surdez e deterioração.",
              imagePath: 'assets/agents/fade/q.png'),
          Ability(
              name: 'E - Assombrar',
              description:
                  "EQUIPE uma assombração. DISPARE para arremessá-la. Ela cairá depois de um determinado tempo. REPITA a habilidade para soltá-la antecipadamente. Essa assombração ataca ao contato, revelando inimigos em sua linha de visão e criando rastros sinistros até eles. Ela pode ser destruída pelos inimigos.",
              imagePath: 'assets/agents/fade/e.png'),
          Ability(
              name: 'C - Espreitador',
              description:
                  "EQUIPE um Espreitador. DISPARE para enviá-lo à frente. SEGURE O DISPARO para mover o Espreitador na direção da sua retícula. Ele perseguirá o primeiro rastro sinistro ou inimigo que encontrar e afetará o alvo com visão turva ao alcançá-lo.",
              imagePath: 'assets/agents/fade/c.png'),
          Ability(
              name: 'X - Véu da Noite',
              description:
                  "EQUIPE o poder dos pesadelos. DISPARE para liberar uma onda implacável de energia aterrorizante. Inimigos atingidos pela onda são marcados por rastros sinistros e sofrem surdez e deterioração.",
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
              name: 'Q - Enseada',
              description:
                  "EQUIPE o poder dos pesadelos. DISPARE para liberar uma onda implacável de energia aterrorizante. Inimigos atingidos pela onda são marcados por rastros sinistros e sofrem surdez e deterioração.",
              imagePath: 'assets/agents/harbor/q.png'),
          Ability(
              name: 'E - Maré Alta',
              description:
                  "EQUIPE uma parede de água. DISPARE para enviar a água para frente junto ao chão. SEGURE O DISPARO para guiar a água na direção da sua retícula, atravessando o mundo e fazendo surgir uma parede ao longo do caminho. Use o DISPARO ALTERNATIVO enquanto curva para parar a água mais cedo. Jogadores atingidos sofrem REDUÇÃO DE VELOCIDADE.",
              imagePath: 'assets/agents/harbor/e.png'),
          Ability(
              name: 'C - Cascata',
              description:
                  "EQUIPE uma onda de água. DISPARE para enviar a onda para frente e através de paredes. REPITA para impedir a onda de seguir em frente. Jogadores atingidos sofrem REDUÇÃO DE VELOCIDADE.",
              imagePath: 'assets/agents/harbor/c.png'),
          Ability(
              name: 'X - Acerto de Contas',
              description:
                  "EQUIPE o poder total do seu Artefato. DISPARE para invocar um gêiser no solo. Os inimigos na área são repetidamente alvejados por ataques do gêiser. Jogadores capturados dentro de uma área de ataque sofrem CONCUSSÃO.",
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
              name: 'Q - Wingman',
              description:
                  "EQUIPE Wingman. DISPARE para enviá-lo para encontrar inimigos. Wingman lança uma forte explosão na direção do primeiro inimigo que vê. Use o DISPARO ALTERNATIVO na direção de um ponto ou Spike plantada para que Wingman plante ou desarme a Spike. Para plantar, Gekko deve estar com a Spike no inventário. Quando Wingman expira, ele se transforma em um glóbulo inativo. INTERAJA para recuperar o glóbulo e ganhar outra carga de Wingman após um curto período.",
              imagePath: 'assets/agents/gekko/q.png'),
          Ability(
              name: 'E - Dizzy',
              description:
                  "EQUIPE Dizzy. DISPARE para enviá-la voando pelo ar. Dizzy avança e solta explosões de plasma nos inimigos em sua linha de visão. Os inimigos atingidos pelo plasma ficam cegos. Ao expirar, Dizzy se transforma em um glóbulo inativo. INTERAJA para recuperar o glóbulo e ganhar outra carga de Dizzy após um curto período.",
              imagePath: 'assets/agents/gekko/e.png'),
          Ability(
              name: 'C - Mosh Pit',
              description:
                  "EQUIPE Mosh. DISPARE para lançá-lo como uma granada. Use o DISPARO ALTERNATIVO para lançar por baixo. Ao atingir uma superfície, Mosh se duplica em uma grande área e, depois de uns instantes, explode.",
              imagePath: 'assets/agents/gekko/c.png'),
          Ability(
              name: 'X - Thrash',
              description:
                  "EQUIPE Thrash. DISPARE para se conectar à mente dela e guiá-la pelo território inimigo. ATIVE para avançar e explodir, detendo qualquer inimigo em um pequeno raio. Ao expirar, Thrash se transforma em um glóbulo inativo. INTERAJA para recuperar o glóbulo e ganhar outra carga de Thrash após um curto período. Thrash pode ser recuperada uma vez.",
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
              name: 'Q - Sensor Sônico',
              description:
                  "EQUIPE um Sensor Sônico. DISPARE para posicionar. O sensor monitora os sons dos inimigos em uma área. Causa concussão na área se sons de passos, disparos ou qualquer barulho significativo forem detectados.",
              imagePath: 'assets/agents/deadlock/q.png'),
          Ability(
              name: 'E - Malha de Barreira',
              description:
                  "EQUIPE um disco de Malha de Barreira. DISPARE para lançar à frente. Ao atingir o chão, o disco gera barreiras a partir do ponto de origem que bloqueiam a movimentação de personagens.",
              imagePath: 'assets/agents/deadlock/e.png'),
          Ability(
              name: 'C - Gravnet',
              description:
                  "EQUIPE uma granada GravNet. DISPARE para lançar. Use o DISPARO ALTERNATIVO para arremessar a curta distância. A GravNet detona ao atingir o chão, forçando inimigos pegos por ela a agacharem e moverem-se lentamente.",
              imagePath: 'assets/agents/deadlock/c.png'),
          Ability(
              name: 'X - Aniquilação',
              description:
                  "EQUIPE um Acelerador de Nanofios. DISPARE para liberar um pulso de nanofios que captura o primeiro inimigo que encontrar. O inimigo encasulado é puxado por uma trilha de nanofios e abatido se chegar ao final da trilha, a não ser que seja libertado. O casulo de nanofios é destrutível.",
              imagePath: 'assets/agents/deadlock/x.png'),
        ],
      ),
      Agent(
        name: 'Iso',
        role: Role.duelist,
        urlImage: 'assets/agents/iso/agent.png',
        bio:
            'Iso é um mercenário chinês que entra em estado de fluxo para desmantelar os oponentes. Ele reconfigura a energia do ambiente para se proteger de balas e avança totalmente focado em direção ao próximo duelo até a morte.',
        abilities: [
          Ability(
              name: 'Q - Centelha Debilitante',
              description:
                  "EQUIPE um feixe molecular. DISPARE para lançá-lo à frente e aplicar FRÁGIL a todos os jogadores que tocar. O feixe pode atravessar objetos sólidos, inclusive paredes.",
              imagePath: 'assets/agents/iso/q.png'),
          Ability(
              name: 'E - Fluxo Protetor',
              description:
                  "INICIE um cronômetro de foco. Enquanto estiver focado, entre em um estado de fluxo. Inimigos que você abater ou causar dano durante esse tempo geram um orbe de energia. Atirar nesse orbe concede a você um escudo que absorve uma instância de dano de qualquer fonte.",
              imagePath: 'assets/agents/iso/e.png'),
          Ability(
              name: 'C - Contingência',
              description:
                  "EQUIPE para reunir energia prismática. DISPARE para enviar à frente uma parede de energia indestrutível que bloqueia balas.",
              imagePath: 'assets/agents/iso/c.png'),
          Ability(
              name: 'X - Contrato de Abate',
              description:
                  "EQUIPE uma arena interdimensional. DISPARE para lançar uma coluna de energia pelo campo de batalha que puxa você e o primeiro inimigo atingido por ela para a arena. Você e esse oponente lutam até a morte.",
              imagePath: 'assets/agents/iso/x.png'),
        ],
      ),
    ];
    return agents;
  }
}
