-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2023 às 22:01
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_adm`
--

CREATE TABLE `tb_adm` (
  `id_ADM` int(11) NOT NULL,
  `login_ADM` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL,
  `senha_ADM` varchar(60) CHARACTER SET latin1 COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_adm`
--

INSERT INTO `tb_adm` (`id_ADM`, `login_ADM`, `senha_ADM`) VALUES
(1, 'AAA', 'XXX');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_curso`
--

CREATE TABLE `tb_curso` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(150) DEFAULT NULL,
  `requisitos` varchar(255) NOT NULL,
  `profissao` varchar(2500) NOT NULL,
  `op_trabalho` varchar(1500) NOT NULL,
  `q_vai_aprender` varchar(2500) NOT NULL,
  `preco` decimal(7,2) NOT NULL,
  `carga_horaria` varchar(60) NOT NULL,
  `id_tipo_curso` int(11) NOT NULL,
  `id_modalidade` int(11) NOT NULL,
  `nome_img` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_curso`
--

INSERT INTO `tb_curso` (`id_curso`, `nome_curso`, `requisitos`, `profissao`, `op_trabalho`, `q_vai_aprender`, `preco`, `carga_horaria`, `id_tipo_curso`, `id_modalidade`, `nome_img`) VALUES
(1, 'Curso Técnico em Desenvolvimento de Sistemas', 'Ensino Médio Incompleto', 'Um dos setores mais produtivos atualmente, a TI abre espaço no mercado de trabalho para muitos profissionais. E um deles pode ser você ao fazer o Curso Técnico em Desenvolvimento de Sistemas. Com essa formação, seu futuro estará no desenvolvimento de sistemas computacionais, na linguagem de programação e análise de dados, além da manutenção de programas de computador.', 'O mercado de TI continua aquecido no Brasil, ou seja, não faltam chances para colocar em prática o conhecimento adquirido nas aulas, como:\n- Empresas de desenvolvimento de sistemas\n- Departamento de desenvolvimento de sistemas em organizações governamentais e não governamentais\n- Profissional autônomo', '- Banco de Dados\n- Desenvolvimento de Sistemas\n- Fundamentos de Eletroeletrônica Aplicada\n- Implantação de Sistemas\n- Internet das Coisas\n- Introdução a Indústria 4.0\n- Introdução a Qualidade e Produtividade\n- Introdução a Tecnologia da Informação e Comunicação\n- Introdução Ao Desenvolvimento de Projetos\n- Lógica de Programação\n- Manutenção de Sistemas\n- Modelagem de Sistemas\n- Programação de Aplicativos\n- Saúde e Segurança no Trabalho\n- Sustentabilidade nos Processos Industriais\n- Teste de Sistemas', '469.00', '24 meses', 1, 1, 'https://www.sistemafiep.org.br/cursos-tecnicos/cursos/Course33358content441477.shtml'),
(3, 'Curso Técnico em Edificações', 'Ensino Médio Incompleto', 'Um dos setores mais dinâmicos do Brasil, a área da construção precisa de profissionais competentes e preparados para preencher as vagas disponíveis no mercado. Com o Curso Técnico em Edificações, você poderá ser um deles. O diploma permitirá que você elabore o orçamento das obras, faça pesquisas tecnológicas, coordene a execução de serviços de manutenção de equipamentos e de instalações em edificações e, o mais importante, consiga um bom emprego.', 'As chances de encontrar uma vaga de trabalho bem remunerada na construção civil serão muitas. As melhores oportunidades estão em:\n- Empresas de construção civil\n- Escritórios de projetos e de construção civil\n- Canteiros de obras\n- Laboratórios de pesquisa e desenvolvimento\n- Profissional autônomo', '- Comunicação e Redação Técnica\n- Desenho Técnico de Edificações\n- Documentação Técnica e Legalização de Projetos\n- Gestão de Pessoas\n- Introdução a Construção de Edifícios\n- Logística de Canteiro e Gestão Ambiental na Construção Civil\n- Materiais e Ensaios Técnológicos\n- Mecânica dos Solos\n- Orçamento de Obras\n- Planejamento e Gestão da Produção\n- Processos Construtivos\n- Projeto Arquitetônico\n- Projeto de Instalações Elétricas e Especiais\n- Projeto Estrutural\n- Projeto Executivo\n- Projeto Final\n- Projetos de Instalações Hidráulicas, Incêndio e Gás\n- Qsms - Qualidade, Saúde, Meio Ambiente e Segurança do Trabalho na Construção Civil\n- Topografia', '289.00', '24 meses', 1, 1, 'https://www.sistemafiep.org.br/cursos-tecnicos/cursos/Course33358content435340.shtml'),
(4, 'Aperf. Pro. em Marcenaria Fina', '- Ensino Fundamental Completo\n- Comprovante de Residência\n- CPF do Aluno\n- RG do Aluno', 'Auxiliar a confeccionar peças em madeira maciça, respeitando procedimentos e normas técnicas, ambientais, de qualidade, de saúde e de segurança.', 'Diversas indústrias moveleiras.', '- Propiciar educação aos alunos para desenvolver atividades como autônomo\n- Atender a demanda dentro dos conceitos do mobiliário atual\n- Leitura e interpretação de desenhos e instruções\n- Conhecimentos dos componentes e técnicas de construção do mobiliário\n- Planejamento de processo e sequências\n- Confecção das partes manualmente: Fazer estruturas com madeira sólida\n- Trabalhar com madeira\n- Trabalhar com laminado de madeira\n- Ajuste e fixação das peças\n- Colagem\n- Instalação de ferragens dobradiça corrediça e dispositivos de montagem\n- Obtenção de dimensões precisas dentro das tolerâncias dadas\n- Realizar marcações medidas padrão necessárias nas peças conforme requerido no projeto\n- Montar móvel obedecendo, angulação e nivelamento.', '470.33', '140 horas', 2, 1, 'https://www.sistemafiep.org.br/cursos-rapidos/aperfeicoamento/Course33581content461472.shtml'),
(5, 'Aperf. Pro. em Manutenção Básica de Veículos Híbridos e Elétricos', '- Ensino Fundamental Completo\n- Comprovante de Residência\n- CPF do Aluno\n- RG do Aluno', 'Aperfeiçoamento-Reparadores de veículos, estudantes de graduação de áreas correlatas à engenharia automotiva, técnicos da área automotiva', 'Reparadores de veículos, estudantes de graduação de áreas correlatas à engenharia automotiva, técnicos da área automotivaReparadores de veículos, estudantes de graduação de áreas correlatas à engenharia automotiva, técnicos da área automotiva.', '- Tecnologia de veículos híbridos e elétricos\n- Condução e carregamento\n- Introdução à segurança com eletricidade\n- Riscos em instalações e serviços com eletricidade: o choque elétrico, mecanismos e efeitos\n- arcos elétricos\n- queimaduras e quedas\n- campos eletromagnéticos\n- Segurança em Eletrificação Veicular\n- Normas de segurança em eletricidade\n- EPI, EPC e ferramentas especiais\n- Capacitação profissional\n- o Elementos e estruturas de segurança veicular\n- Manutenção e falhas\n- Equipamento de medição e teste\n- Rotinas de trabalho - Procedimentos\n- instalações desenergizadas\n- liberação para serviços\n- sinalização\n- inspeções de áreas, serviços, ferramental e equipamento\n- Documentação de instalações elétricas e Procedimentos de emergência e resgate', '282.50', '20 horas', 2, 1, 'https://www.sistemafiep.org.br/cursos-rapidos/aperfeicoamento/Course33581content440398.shtml'),
(6, 'Aperf. Pro. em Aplicação de Revestimento Cerâmico e Porcelanato', '- Ensino fundamental incompleto.\n- Comprovante de Residência\n- CPF do Aluno\n- RG do Aluno', 'Promover o desenvolvimento de competências, de modo que os participantes apliquem revestimento cerâmicos e porcelanato, observando normas e padrões técnicos de qualidade, segurança, higiene, saúde e preservação ambiental.', 'Indústrias da Construção Civil; Construtoras; Canteiros de Obras.', '- Qualidade, Segurança, Meio ambiente e Saúde (QSMS)\n- Matemática básica\n- Tipos de argamassas colantes\n- Equipamentos e ferramentas\n- Tipos de revestimento cerâmico e classificação\n- Técnicas de aplicação de azulejo e piso cerâmico\n- Conceito de planejamento e paginação\n- Técnicas de aplicação de porcelanato.', '204.50', '60 horas', 2, 1, 'https://www.sistemafiep.org.br/cursos-rapidos/aperfeicoamento/Course33581content464625.shtml'),
(7, 'Aperf. Pro. em Confecção de Caixa de Abelha para Meliponicultura', '- Ensino Fundamental\n- Comprovante de Residência\n- CPF do Aluno\n- RG do Aluno', 'Apicultor', 'Criação de abelhas.', '- Propiciar conhecimento técnico aos alunos para desenvolver atividades autônomas\n- Caraterísticas da madeira maciça para construção de caixas\n- Dimensionamentos interno da caixa\n- Encaixe em madeira\n- Acabamento de superfície\n- Confecção manualmente das peças: fazer estruturas com madeira sólida, trabalhar com madeira, colagem e lixamentos.', '165.00', '20 horas', 2, 1, 'https://www.sistemafiep.org.br/cursos-rapidos/aperfeicoamento/Course33581content469746.shtml'),
(8, 'Aperf. Pro. em Instalação de Drywall e Paredes e Tetos Especiais', '- Ensino Fundamental I completo\n- Comprovante de Residência\n- CPF do Aluno\n- RG do Aluno', 'O curso visa atualizar competências profissionais nos participantes de modo que atuem na construção a seco, demonstrando o processo de construção e o correto uso de suas ferramentas.', 'Autonomo e Construtor de Drywall', '- Gestão\n- QSMS\n- Matemática básica\n- Apresentação do sistema\n- Tipos e materiais utilizados\n- Ferramentas utilizadas\n- Leitura de projetos\n- Locação de paredes\n- Corte dos perfis\n- Montagem da estrutura\n- Corte das chapas\n- Fixação das chapas\n- Montagem da estrutura de forros\n- Tratamento de juntas e execução de reparos\n- Apresentação de paredes especiais\n- Apresentação de forros especiais\n- Montagem da estrutura de paredes especiais\n- Montagem da estrutura de forros especiais\n- Fixação da chapa na estrutura da parede\n- Fixação da chapa na estrutura do forro e Tratamento de juntas.', '201.75', '60 horas', 2, 1, 'https://www.sistemafiep.org.br/cursos-rapidos/aperfeicoamento/Course33581content468110.shtml'),
(12, 'Tecnólogo em Design de Moda', 'Ensino Médio Completo', 'O Curso Superior de Tecnologia em Design de Moda forma profissionais com habilidades e competências necessárias para desenvolver produtos de moda e vestuário, focando em inovação, desenvolvimento de produtos, visão de oportunidades comerciais e sua interface na produção, entendimento da moda como negócio e a flexibilidade para atuar em cenários competitivos. Se você é uma pessoa criativa, que tem interesse pelas diversas manifestações artísticas e culturais e grande curiosidade em relação aos diferentes aspectos culturais da sociedade, o curso será imprescindível para desenvolver suas aptidões.', 'Campos de Atuação:\n- Empresas de confecção, fiações e tecelagens\n- Varejo de moda\n- Assessoria e consultoria de moda e tendências\n- Estúdios de design', '1º PERÍODO\n• Jornada de Aprendizagem: Projeto – Design e Criatividade\n• Desenho de moda\n• Oficina de costura\n• Modelagem industrial plana\n• Desenho técnico\n2º PERÍODO\n• Jornada de Aprendizagem: Projeto – Produto e Tecnologia\n• Materiais e tecnologia têxtil\n• História da indumentária\n• Representação gráfica digital\n• Oficina de modelagem e forma\n3º PERÍODO\n• Jornada de Aprendizagem: Projeto – Mercado e Sustentabilidade\n• História da arte e do design\n• Marketing de moda\n• Processo produtivo da confecção\n• Modelagem informatizada\n4º PERÍODO\n• Jornada de Aprendizagem: Projeto – Identidade e Empreendedorismo\n• Modelagem tridimensional\n• Comportamento empreendedor\n• Laboratório de criatividade\n• Produção de moda\n• Atividades Complementares', '1089.00', '24 meses', 3, 2, 'https://www.faculdadesdaindustria.org.br/graduacao/Course35734content413447.shtml'),
(13, 'Bacharelado em Engenharia Automotiva', 'Ensino Médio Completo', 'O curso de Engenharia Automotiva das Faculdades da Indústria tem por objetivo suprir uma demanda de mercado por profissionais comprometidos com o projeto, planejamento, desenvolvimento, utilização, gestão e manutenção de sistemas automotivos. Por meio de processos, técnicas e procedimentos que visam a qualidade e a uma visão estratégica, inovadora e tecnológica, os profissionais formados serão aptos a atender aos novos desafios da indústria da mobilidade, frente às emergentes tendências mundiais, contribuindo para o desenvolvimento pleno e sustentável do setor.', 'Campos de Atuação:\n- Indústrias com linhas de produção automatizadas, químicas, petroquímicas, de exploração e produção de petróleo, aeroespaciais, automobilística, metalmecânica, plástico, etc\n- Empresas de manutenção e reparo\n- Empresas integradoras de sistemas de automação industrial\n- Fabricantes de máquinas, componentes e equipamentos robotizados\n- Grupos de pesquisa que desenvolvam projetos na área de sistemas elétricos\n- Laboratórios de controle de qualidade', '1º Período\n• Ciência, tecnologia e sustentabilidade | 80h\n• Engenharia de protótipos e modelagem 3d | 80h\n• Design de software aplicado a engenharia | 80h\n• Jornada de Aprendizagem – Inovação e as necessidades da sociedade | 80h\n2º Período\n• Estatística orientada a ciência de dados | 80h\n• Física geral e experimental | 80h\n• Cálculo aplicado, geometria analítica e álgebra linear | 80h\n• Jornada de Aprendizagem – Tecnologia e sistemas | 80h\n3º Período\n• Análise de circuitos elétricos teórico e experimental | 80h\n• Cálculo integral e diferencial | 80h\n• Química dos materiais | 80h\n• Jornada de Aprendizagem – Gestão e viabilidade de projetos | 80h\n4º Período\n• Modelagem matemática e simulação | 80h\n• Análise e projeto de sistemas térmicos | 80h\n• Análise estrutural em sistemas mecânicos | 80h\n• Jornada de Aprendizagem – Concepção e design de produtos | 80h\n5º Período\n• Sistemas mecânicos automotivos | 80h\n• Eletrônica aplicada | 80h\n• Dinâmica dos fluídos e máquinas de fluxos | 80h\n• Jornada de Aprendizagem – Refrigeração e climatização automotiva | 80h\n6º Período\n• Motorização e transmissão automotiva | 80h\n• Análise computacional de resistência dos materiais | 80h\n• Metrologia dimensional | 80h\n• Jornada de Aprendizagem – Oficina e manutenção automotiva | 80h\n7º Período\n• Eletrônica de potência e acionamentos eletrônicos | 80h\n• Conectividade e compartilhamento veicular | 80h\n• Eletromagnetismo | 80h\n• Jornada de Aprendizagem – Sistemas embarcados e método de navegação autônoma | 80h\n8º Período\n• Vibrações mecânicas | 80h\n• Manufatura integrada – CAD / CAE | 80h\n• Dinâmica veicular e aerodinâmica | 80h\n• Jornada de Aprendizagem – Emisões veiculares e veículos de alto desempenho | 80h\n9º Período\n• Hibridização e eletrificação veicular | 80h\n• Processos de fabricação | 80h\n• Jornada de Aprendizagem – TCC | 80h\n10º Período\n• Eletiva | 80h\n• Jornadas de Aprendizagem – Estágio | 80h\n• Estágio | 160h\n• Atividades complementares | 480h', '1346.00', '60 meses', 3, 2, 'https://www.faculdadesdaindustria.org.br/graduacao/Course35734content413450.shtml'),
(14, 'Bacharelado em Engenharia de Energias', 'Ensino Médio Completo', 'O curso de Engenharia de Energias das Faculdades da Indústria tem por objetivo formar profissionais com um sólido e profundo conhecimento na área de Engenharia de Energias dando ênfase em energias renováveis, estando apto também a absorver e desenvolver novas tecnologias, estimulando sua atuação crítica e criativa na identificação e resolução de problemas voltados a área de geração energética advinda de matrizes renováveis e não renováveis, considerando seus aspectos políticos, econômicos, sociais, ambientais e culturais, com visão ética e humanística, em atendimento às demandas da sociedade.', 'Campos de Atuação:\n- Empresas de Energia (geradoras, distribuidoras, transmissoras, etc.)\n- Setor Público, criando políticas públicas na área de energia e meio ambiente\n- Desenvolvedoras de Tecnologia da área\n- Indústrias de Petróleo e Metal\n- Setor de Combustíveis\n- Serviços de consultoria em eficiência energética', '1º Período\n• Ciência, tecnologia e sustentabilidade | 80h\n• Engenharia de protótipos e modelagem 3d | 80h\n• Design de software aplicado a engenharia | 80h\n• Jornada de Aprendizagem – Inovação e as necessidades da sociedade | 80h\n2º Período\n• Estatística orientada a ciência de dados | 80h\n• Física geral e experimental | 80h\n• Cálculo aplicado, geometria analítica e álgebra linear | 80h\n• Jornada de Aprendizagem – Tecnologia e sistemas | 80h\n3º Período\n• Jornada de Aprendizagem – Tecnologia e sistemas | 80h\n• Cálculo integral e diferencial | 80h\n• Química dos materiais | 80h\n• Jornada de Aprendizagem – Gestão e viabilidade de projeto | 80h\n4º Período\n• Modelagem matemática e simulação | 80h\n• Análise e projeto de sistemas térmicos | 80h\n• Análise estrutural em sistemas mecânicos | 80h\n• Jornada de Aprendizagem – Concepção e design de produtos | 80h\n5º Período\n• Análise de circuitos elétricos avançado | 80h\n• Eletrônica aplicada | 80h\n• Dinâmica dos fluídos e máquinas de fluxos | 80h\n• Jornada de Aprendizagem – Refrigeração e climatização ambiental | 80h\n6º Período\n• Energia térmica | 80h\n• Análise computacional de resistência dos materiais | 80h\n• Análise de circuitos elétricos avançado | 80h\n• Jornada de Aprendizagem – Cogeração de energia | 80h\n7º Período\n• Eletrônica de potência e acionamentos eletrônicos | 80h\n• Geração de energia | 80h\n• Eletromagnetismo | 80h\n• Jornada de Aprendizagem – Transmissão e distribuição de energia | 80h\n8º Período\n• Vibrações mecânicas | 80h\n• Energia solar fotovoltaica | 80h\n• Tecnologia dos sistemas eólicos | 80h\n• Jornada de Aprendizagem – Projeto de instalações elétricas | 80h\n9º Período\n• Biomassa, biocombustível e biogás | 80h\n• Células combustíveis | 80h\n• Jornada de Aprendizagem – TCC | 80h\n10º Período\n• Eletiva | 80h\n• Jornadas de Aprendizagem – Estágio | 80h\n• Estágio | 160h\n• Atividades complementares | 480h', '989.00', '60 meses', 3, 2, 'https://www.faculdadesdaindustria.org.br/graduacao/Course35734content413451.shtml'),
(15, 'Especialização em Arquitetura e a Arte da Iluminação', 'Documento oficial de identidade\r\nCertidão de nascimento ou casamento \r\nCPF\r\nComprovante de residência atual (últimos 30 dias)\r\nDiploma e respectivo histórico de graduação', 'A área de iluminação é um tema complexo e necessita de uma carga horária dedicada a cada uma das especialidades da área. A iluminação cênica e iluminação funcional é abordada nos cursos de graduação de forma superficial dada a complexidade do tema. A demanda é grande por profissionais especializados na área, os profissionais formados nas áreas de arquitetura, design e engenharia procuram esse tema em específico para se aperfeiçoar e ampliar os conhecimentos na área para proporcionar ambientes mais aconchegantes, eficientes e adequados a proposta do uso.', 'O curso destina-se a profissionais e alunos graduados na área de design de interiores, arquitetura, engenharia civil, engenharia elétrica, design de produto e interessados em especializar-se em iluminação.', 'Arte, Design e Iluminação (história da iluminação e introdução sobre saber ver)          | 16h\r\nConceitos básicos da luminotécnica, iluminação e superfícies | 16h\r\nTécnicas e  Tecnologias da iluminação | 24h\r\nCriação de Luminárias e detalhamento de iluminação de mobiliários | 16h\r\nProcesso criativo do projeto de iluminação | 16h\r\nCálculo luminotécnico manual | 16h\r\nCálculo luminotécnico – softwares para interiores | 24h\r\nCálculo luminotécnico – softwares para exteriores | 24h\r\nProjeto de iluminação de interiores residencial | 32h\r\nProjeto de iluminação de interiores de restaurantes e ambientes gastronômicos | 32h\r\nProjeto de iluminação de interiores comerciais – bares e casas de show  | 32h\r\nProjeto de iluminação de Interiores Comerciais – Museus e lojas | 32h\r\nProjeto de iluminação de paisagismo e fachadas | 32h\r\nProjeto de iluminação de espaços de serviço e corporativos | 32h\r\nIluminação natural e artificial e eficiência energética | 16h', '499.00', '18 meses', 4, 2, 'https://www.faculdadesdaindustria.org.br/pos-graduacao/Course35758content470624.shtml'),
(16, 'Especialização em Gerenciamento de Obras', 'Documento oficial de identidade\r\nCertidão de nascimento ou casamento \r\nCPF\r\nComprovante de residência atual (últimos 30 dias)\r\nDiploma e respectivo histórico de graduação', 'Uma grande parcela das perdas de eficiência na construção civil é causada por problemas relacionados a deficiências técnicas e de gestão como: planejamento deficiente, não atendimento às normas técnicas do setor, desconhecimento das causas das patologias das edificações, projetos deficientes, má gestão da mão-de-obra e falta de monitoramento do processo de construção. O mercado de trabalho necessita de um profissional completo, que atue nas empresas de construção civil de forma estratégica, que saiba mapear os processos e integrá-los de maneira otimizada, racionalizar material e mão de obra, e por fim implementar ações para melhorias nos processos administrativos e de produção. A procura por profissionais com este perfil, tem sido cada vez maior, pois existe um grande crescimento da construção civil nos últimos anos.', 'O curso de Especialização em Gerenciamento de Obras é aberto a candidatos diplomados em cursos de graduação ou demais cursos superiores e que atendam às exigências das instituições de ensino. É voltado à profissionais com formação em cursos nas áreas de Engenharia e áreas afins, que desejam atuar no desenvolvimento, implementação e gerenciamento de obras.', 'Planejamento e Controle de Obras | 24h\r\nViabilidade econômica e incorporação de empreendimentos | 24h\r\nLean Construction | 24h\r\nMetodologias BIM para projetos | 24h\r\nInovação Tecnológica na Construção Civil | 24h\r\nFerramentas de gestão e medição do desempenho – Power BI | 24h\r\nDesempenho das construções de acordo com a NBR 15575 | 24h\r\nRequisitos de Desempenho habitacional: Sustentabilidade, Segurança e Habitabilidade | 24h\r\nGestão do Projeto Colaborativo e Integração de Modelos | 24h\r\nSimulação do Planejamento e Controle de Custos em modelos paramétricos | 24h\r\nLiderança Colaborativa e Gestão de Pessoas | 24h\r\nLegislação e contratos na Construção Civil | 24h\r\nGestão de Suprimentos e Logística Lean | 24h\r\nGestão Integrada de empreendimentos (QSMS) | 24h\r\nManifestações Patológicas, Prevenção e Tratamento | 24h', '499.00', '18 meses', 4, 2, 'https://www.faculdadesdaindustria.org.br/pos-graduacao/Course35758content470625.shtml'),
(17, 'Gerenciamento de Projetos', 'Documento oficial de identidade\r\nCertidão de nascimento ou casamento \r\nCPF\r\nComprovante de residência atual (últimos 30 dias)\r\nDiploma e respectivo histórico de graduação', 'O curso tem como objetivo formar profissionais com visão estratégica global da Gestão de Projetos, em sintonia com as melhores práticas mundiais.', 'Profissionais graduados que possuem um perfil dinâmico e inovador, interessados em adquirir conhecimentos e a capacidade efetiva de conduzir projetos sob uma visão ampla (negócios, técnica e humana) e estratégica.', 'A Nova Gestão de Projetos | 24h\r\nEstratégia Corporativa e Princípios de Gestão | 24h\r\nIdealização de Projetos e Análise de Viabilidade | 24h\r\nAbordagens para o Desenvolvimento de Projetos | 24h\r\nProjeto Integrador: Idealizando e Validando Soluções (Pré-Projeto) | 36h\r\nPlanejamento de Projetos | 36h\r\nLiderando Equipes de Projetos | 24h\r\nGestão Financeira de Projetos | 24h\r\nProjeto Integrador: Planejando e Organizando Projetos | 24h\r\nGerindo Valor | 24h\r\nProjeto Integrador: Implementando e Validando Soluções | 24h\r\nQualidade Total e Mensurações de Desempenho | 24h\r\nRiscos, Incertezas, Adaptabilidade e Resiliência | 24h\r\nProjeto Integrador: Entregando e Demonstrando Resultados | 24h', '499.00', '18 meses', 4, 2, 'https://www.faculdadesdaindustria.org.br/pos-graduacao/Course35758content427136.shtml'),
(18, 'Relações Trabalhistas e Negociações Sindicais', 'Documento oficial de identidade\r\nCertidão de nascimento ou casamento \r\nCPF\r\nComprovante de residência atual (últimos 30 dias)\r\nDiploma e respectivo histórico de graduação', 'O curso tem por objetivo contribuir para a formação de profissionais especializados na área trabalhista coletiva e que saibam enfrentar os desafios que estão surgindo com as novas perspectivas sindicais: maior capacidade de negociação, uma visão mais abrangente das relações de trabalho e uma compreensão mais detalhada das nuances e da dinâmica do das negociações sindicais.', 'Gestores, advogados, profissionais de RH ou graduados em outras áreas do conhecimento, interessados nas relações coletivas de trabalho e na dinâmica dos pressupostos dessa área, que envolve o Direito do Trabalho, Sindicatos dos trabalhadores e de empregadores, empresas e Poder Judiciário.', 'Relações Trabalhistas 1 | 100 horas\r\n\r\nRelações Trabalhistas 2 | 100 horas\r\n\r\nRelações Coletivas de Trabalho | 60 horas\r\n\r\nNegociações Sindicais | 100 horas\r\n\r\nTOTAL: 360 horas', '781.00', '12 meses', 4, 2, 'https://www.faculdadesdaindustria.org.br/pos-graduacao/Course35758content461427.shtml');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_modalidade`
--

CREATE TABLE `tb_modalidade` (
  `id_modalidade` int(11) NOT NULL,
  `modalidade` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_modalidade`
--

INSERT INTO `tb_modalidade` (`id_modalidade`, `modalidade`) VALUES
(1, 'Cursos Profissionalizantes'),
(2, 'Cursos Superiores');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_curso`
--

CREATE TABLE `tb_tipo_curso` (
  `id_tipo_curso` int(11) NOT NULL,
  `tipo_curso` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_tipo_curso`
--

INSERT INTO `tb_tipo_curso` (`id_tipo_curso`, `tipo_curso`) VALUES
(1, 'Curso Tecnico'),
(2, 'Curso Rapido'),
(3, 'Graduacao'),
(4, 'Pos/MBA/Mestrado');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_adm`
--
ALTER TABLE `tb_adm`
  ADD PRIMARY KEY (`id_ADM`);

--
-- Indexes for table `tb_curso`
--
ALTER TABLE `tb_curso`
  ADD PRIMARY KEY (`id_curso`),
  ADD KEY `fk_id_tipo_curso` (`id_tipo_curso`),
  ADD KEY `fk_id_modalidade` (`id_modalidade`);

--
-- Indexes for table `tb_modalidade`
--
ALTER TABLE `tb_modalidade`
  ADD PRIMARY KEY (`id_modalidade`);

--
-- Indexes for table `tb_tipo_curso`
--
ALTER TABLE `tb_tipo_curso`
  ADD PRIMARY KEY (`id_tipo_curso`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_adm`
--
ALTER TABLE `tb_adm`
  MODIFY `id_ADM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_curso`
--
ALTER TABLE `tb_curso`
  MODIFY `id_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb_modalidade`
--
ALTER TABLE `tb_modalidade`
  MODIFY `id_modalidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_tipo_curso`
--
ALTER TABLE `tb_tipo_curso`
  MODIFY `id_tipo_curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_curso`
--
ALTER TABLE `tb_curso`
  ADD CONSTRAINT `fk_id_modalidade` FOREIGN KEY (`id_modalidade`) REFERENCES `tb_modalidade` (`id_modalidade`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_id_tipo_curso` FOREIGN KEY (`id_tipo_curso`) REFERENCES `tb_tipo_curso` (`id_tipo_curso`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
