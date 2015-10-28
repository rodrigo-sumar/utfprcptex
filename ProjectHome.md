  * [Novidades](http://code.google.com/p/utfprcptex/#Novidades)
  * [Descrição](http://code.google.com/p/utfprcptex/#Descrição)
  * [Documentação](http://code.google.com/p/utfprcptex/#Documentação)
  * [Instalação do UTFPRCPTeX](http://code.google.com/p/utfprcptex/#Instalação_do_UTFPRCPTeX)
  * [Instalação do AbnTeX](http://code.google.com/p/utfprcptex/#Instalação_do_AbnTeX)


## Novidades ##

Adicionada Beta 2.0 da versão 6.0 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Alterada forma de montar lista de siglas

Adicionada Beta 2.0 da versão 5.0 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Corrigido espaço na lista de siglas.

Adicionada Beta 2.0 da versão 4.0 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Comando para código do aluno na capa do pré-projeto.

Adicionada Beta 2.0 da versão 3.0 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Corrigido espaçamento entre parágrafos.

Adicionada Beta 2.0 da versão 2.0 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Corrigido espaçamento nas listas de figuras, tabelas e quadros.

Adicionada Beta 1.0 da versão 2.0 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Adicionados os comandos \abrevi e \listadeabreviaturas para geral a lista de abreviaturas apareça.
  * Alterado o comando \datadefesaUTFRP{dia}{mes}{ano}|, para poder utilizar o ano de defesa no resumo.
  * O comando \nivel{Mestrado} obrigatório para definir no resumo qual entrada será usada \coordenacao ou \curso
  * Alterados o resumo e o abstract.
  * Alterado o espaço entre paragrafos.

Adicionada Beta 10 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * O titulo na citação do resumo foi colocado em negrito.

Adicionada Beta 9 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Acrescentado o comando \numerodemembrosnabanca{numero de membros} que é utilizado para definir se os campos de assinaturas dos membros da banca na folha de aprovação serão colocados em uma ou duas colunas. Se o orientador e/ou o coorientador não fizerem parte da banca eles não deverão ser considerados no numero total de membros.
  * Acrescentado o comando \orientadornabanca{sim ou nao} que é utilizado para definir se o campo de assinatura do orientador será inserido entre os membros da banca ou não. No caso de o orientador não participar da banca sua assinatura constará junto a do coordenador do curso.
  * Acrescentado o comando \coorientadornabanca{sim ou nao} que é utilizado para definir se o campo de assinatura do coorientador será inserido entre os membros da banca ou não. No caso de o coorientador não participar da banca sua assinatura constará junto a do coordenador do curso.


Adicionada Beta 8 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Acrescentada a opção para gerar documentos frete e verso, basta utilizar  a opção "twoside" na classe.
  * Acrescentada a opção para gerar automaticamente a ficha catalográfica atrás da folha de rosto. Para mais detalhes consultar o manual. Esta opção ainda esta em fase de testes, a ficha oficial é gerada apenas pela biblioteca universitária.


Adicionada Beta 7 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Resolvido problema com a lista de símbolos.


Adicionada Beta 6 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Acrescentado um modelo para elaboração de pré-projetos de TCC.
  * Acrescentado o comando \quadro para gerar legendas de quadros.
  * Acrescentado o comando \listadequadros para gerar a lista de quadros.


Adicionada Beta 5 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Corrigo problema ao se utilizar o comando \fontetipo.


Adicionada Beta 4 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Corrigido erro nas margens causado pelo pacote fancyhdr.


Adicionada Beta 3 da classe UTFPRCPTEX. As seguintes modificações foram feitas:

  * Modificada a folha de aprovação.
  * Retirados os comandos programa e departamento.
  * Acrescentados os comandos diretoria, coordenacao e curso.


## Descrição ##

O UTFPRCPTEX e uma classe de formatação para Dissertações e Trabalhos de Conclusão de Curso segundo as [Normas para Elaboração de Trabalhos Acadêmicos](http://www.utfpr.edu.br/dibib/normas-para-elaboracao-de-trabalhos-academicos) da Universidade Tecnológica Federal do Paraná.

Por ser uma classe (modelo) o UTFPRCPTEX é invocado nas primeiras linhas do seu
documento escrito no LaTeX, com o comando \documentclass.

Este modelo é baseado no ABNTEX e foi desenvolvido por...

Se você desejar contribuir para o desenvolvimento deste modelo, entre em contato comigo e participe do projeto associando-se ao Google Code.

Veja instruções abaixo de como instalar o ABNTEX bem como o UTFPRCPTEX.


## Documentação ##

Um manual e um exemplo de documento usando a classe UtfprcpTeX podem ser encontrados na pasta doc após o download do arquivo .zip. Os pdfs destes documentos também estão no arquivo.zip, mas podem ser baixados através dos links abaixo:

  * [Manual do UTFPRCPTEX](http://utfprcptex.googlecode.com/svn/trunk/doc/utfprcptex/manual/ManualUTFPRCPTeX.pdf)
  * [Exemplo de Dissertação](http://utfprcptex.googlecode.com/svn/trunk/doc/utfprcptex/exemplos/Dissertacao/modelo_dissertacao.pdf)
  * [Exemplo de Trabalho Academico](http://utfprcptex.googlecode.com/svn/trunk/doc/utfprcptex/exemplos/TrabalhoAcademico/Exemplo.pdf)
  * [Exemplo de Pré-projeto de Trabalho de Conclusão](http://utfprcptex.googlecode.com/svn/trunk/doc/utfprcptex/exemplos/PreProjeto/Preprojeto.pdf)

## Instalação do UTFPRCPTeX ##

Você pode instalar o UtfprcpTeX de diversas maneiras, veja abaixo:

## A partir do download do arquivo compactado ##

  * Baixe na página de download deste projeto o arquiv .rar com a versão mais recente do UtfprcpTeX;
  * Uma vez baixado o arquivo, descompacte-o em uma pasta exclusiva;
  * Entre no menu de configurações (settings) do MiKTeX (Menu iniciar/programas/MiKTeX 2.X);
  * Na aba Roots clique no botão Add e adicione a pasta onde você descompactou o pgeeltex;
  * Volte para a aba General e clique nos botões Refresh FNDB e Update Formats.

Pronto, o MiKTeX já sabe onde está o UtfprcpTeX.

## A partir do SVN ##

Você pode também baixar o UtfprcpTeX a partir do repositório [SVN](http://pt.wikipedia.org/wiki/Subversion) deste projeto. A vantagem deste método é que você sempre baixará a versão mais recente do UtfprcpTeX. Além disso, com um [sistema de controle de versões](http://pt.wikipedia.org/wiki/Sistema_de_controle_de_versão) você pode facilmente atualizar o UtfprcpTeX. O procedimento básico é o seguinte:

  * Baixe e instale um programa cliente SVN. Recomenda-se o [Tortoise SVN](http://tortoisesvn.tigris.org/);
  * Crie uma pasta para o UtfprcpTeX no seu computador;
  * Instalado o Tortoise SVN clique com o botão direito do mouse dentro desta pasta e      selecione SVN Checkout;
  * Na janela que abriu, cole o seguinte endereço no campo URL of reposiroty:
> > `https://utfprcptex.googlecode.com/svn/trunk/`
  * Clique em OK e espere o Tortoise conectar e baixar os diretórios e arquivos mais atuais do servidor;
  * Pronto, agora você já tem a versão mais atual do PgeelTeX;
  * Entre no menu de configurações (settings) do MiKTeX (Menu iniciar/programas/MiKTeX 2.X);
  * Na aba Roots clique no botão Add e adicione a pasta que foi criada para o UtfprcpTeX;
  * Volte para a aba General e clique nos botões Refresh FNDB e Update Formats.
Pronto, o MiKTeX já sabe onde está o UtfprcpTeX.

Se você quiser usar um cliente SVN na linha de comando do Windows (ou Linux), baixe os binários do SVN no site [http://subversion.tigris.org/](http://subversion.tigris.org/) e após instalar, utilize a seguinte linha de comando:

`svn checkout http://utfprcptex.googlecode.com/svn/trunk/ utfprcptex-read-only`

## Instalação do AbnTeX ##

Para que o UtfprcpTeX funcione, é necessário que você tenha instalado o pacote AbnTeX (versão 0.9 ou superior). O procedimento é semelhante a instalação do UtfprcpTeX via arquivo compactado:

  * Baixe a ultima versão do [AbnTeX](http://sourceforge.net/projects/abntex/);
  * Descompacte-o em uma pasta dedicada;
  * Entre no menu de configurações (settings) do MiKTeX (Menu iniciar/programas/MiKTeX 2.X);
  * Na aba Roots clique no botão Add e adicione a pasta texmf que está dentro da pasta onde você descompactou o AbnTeX;
  * Volte para a aba General e clique nos botões Refresh FNDB e Update Formats.


Pronto, agora o MiKTeX sabe onde está instalado o AbnTeX e você já pode começar a escrever seu trabalho! Boa sorte!