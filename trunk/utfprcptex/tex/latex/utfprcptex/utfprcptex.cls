%% version 1.0
%% utfprcptex.cls
%% Copyright 2011      Rodrigo Rodrigues Sumar <sumar@utfpr.edu.br>
%% Copyright 2011      Bruno Augusto Ang�lico <bangelico@utfpr.edu.br>
%
% This work may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or (at your option) any later version.
% The latest version of this license is in
% http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This work has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this work is normas-utf-sf.net.
%
% This work consists of the file normas-utf-tex.cls

% depend�ncia: abntex >= 0.9-beta2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Primeira parte: Identifica��o
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Esta � uma classe Latex2e:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfprcptex}[2011/12/12 Classe de Normas para Trabalhos da UTFPR]

\PassOptionsToClass{pagestart=firstchapter,chapter=TITLE,section=TITLE}{abnt}

\RequirePackage[brazil]{babel} % pacote portugues brasileiro
\RequirePackage[latin1]{inputenc} % pacote para acentuacao direta
\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{perpage}
\RequirePackage[overload]{textcase}
\PassOptionsToPackage{hyperindex=false}{hyperref}
\RequirePackage{nomencl} % Pacote necess�rio para a lista de siglas.
% O comando a seguir executa o makeindex automaticamente
%para ordenar automaticamente a lista de siglas
\immediate\write18{makeindex \jobname.nlo -s nomencl.ist -o \jobname.nls}

\LoadClass{abnt}

\makeatletter	%Para que se entenda o @


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Segunda parte: Declara��o das op��es da UTFPR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Logotipo:
\newcommand{\utfprtex}{{\rm U\kern-.15em\lower.7ex\hbox{T}\kern-.125em{FPRCP}\kern-.125em T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

\newlength{\siglawidth}
\newlength{\siglamaxwidth}

\newcommand{\fontetipo}[1]%
{\ifthenelse{\equal{#1}{times}}% se times
  {\usepackage{times}} % entao fonte Times (Nimbus Roman)
  { \ifthenelse{\equal{#1}{arial}}
  %senao fonte Helvetica (Nimbus Sans)
   {\renewcommand*\familydefault{\sfdefault}\usepackage{helvet}}
  }
}

\providecommand{\UTFPRdepartamentodata}{}
\newcommand{\departamento}[1]{\renewcommand{\UTFPRdepartamentodata}{#1}}

\providecommand{\UTFPRprogramadata}{}
\newcommand{\programa}[1]{\renewcommand{\UTFPRprogramadata}{#1}}

\providecommand{\UTFPRareadata}{}
\newcommand{\area}[1]{\renewcommand{\UTFPRareadata}{#1}}

\providecommand{\UTFPRdocumentodata}{}
\newcommand{\documento}[1]{\renewcommand{\UTFPRdocumentodata}{#1}}

\providecommand{\UTFPRniveldata}{}
\newcommand{\nivel}[1]{\renewcommand{\UTFPRniveldata}{#1}}

\providecommand{\UTFPRtitulacaodata}{}
\newcommand{\titulacao}[1]{\renewcommand{\UTFPRtitulacaodata}{#1}}

\providecommand{\UTFPRunidadedata}{}
\newcommand{\unidade}[1]{\renewcommand{\UTFPRunidadedata}{#1}}

% Disciplina:
\providecommand{\UTFPRdiscip}{}
\newcommand{\discipUTFPR}[1]{\renewcommand{\UTFPRdiscip}{#1}}

% Laborat�rio:
\providecommand{\UTFPRlab}{}
\newcommand{\labUTFPR}[1]{\renewcommand{\UTFPRlab}{#1}}


\providecommand{\UTFPRautordoisdata}{}
\newcommand{\autordois}[1]{\renewcommand{\UTFPRautordoisdata}{#1}}

\providecommand{\UTFPRautortresdata}{}
\newcommand{\autortres}[1]{\renewcommand{\UTFPRautortresdata}{#1}}

\providecommand{\UTFPRautorquatrodata}{}
\newcommand{\autorquatro}[1]{\renewcommand{\UTFPRautorquatrodata}{#1}}

\providecommand{\UTFPRcitadata}{}
\newcommand{\cita}[1]{\renewcommand{\UTFPRcitadata}{#1}}

\providecommand{\UTFPRtitledata}{}
\renewcommand{\title}[1]{\renewcommand{\UTFPRtitledata}{#1}}

\providecommand{\UTFPRpalavraschavedata}{}
\newcommand{\palavraschave}[1]{\renewcommand{\UTFPRpalavraschavedata}{#1}}

\providecommand{\UTFPRkeywordsdata}{}
\newcommand{\keywords}[1]{\renewcommand{\UTFPRkeywordsdata}{#1}}

\newcommand{\UTFPRifnotempty}[3]{\ifthenelse{\not\equal{#1}{}}{#2}{#3}}

\providecommand{\UTFPRcoordenadorname}{}
\providecommand{\UTFPRcoordenadordata}{}
\providecommand{\UTFPRcoordenadorStr}{}
\newcommand{\coordenadorUTFPR}[3][Coordenador]%
  {\renewcommand{\UTFPRcoordenadorname}{#3}%
   \renewcommand{\UTFPRcoordenadordata}{#2}
   \renewcommand{\UTFPRcoordenadorStr}{#1}}

\providecommand{\UTFPRorientadorStr}{}
\renewcommand{\orientador}[3][Orientador]%
  {\renewcommand{\ABNTorientadorname}{#3}%
   \renewcommand{\ABNTorientadordata}{#2}
   \renewcommand{\UTFPRorientadorStr}{#1}}

\providecommand{\UTFPRcoorientadorname}{}
\providecommand{\UTFPRcoorientadordata}{}
\providecommand{\UTFPRcoorientadorStr}{}
\renewcommand{\coorientador}[3][Co-orientador]%
  {\renewcommand{\UTFPRcoorientadorname}{#3}%
   \renewcommand{\UTFPRcoorientadordata}{#2}%
   \renewcommand{\UTFPRcoorientadorStr}{#1}}


%200611: mais coorientadores
\providecommand{\UTFPRcoorientadorbdata}{}
\newcommand{\coorientadorb}[1]{\renewcommand{\UTFPRcoorientadorbdata}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA DISSERTACAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\capa}{
	\begin{titlepage}
		\begin{center}
		  \begin{espacosimples}
				{\fontsize{12}{14}\selectfont \MakeUppercase{\ABNTinstituicaodata}\par}
				\UTFPRifnotempty{\UTFPRunidadedata}{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRunidadedata}\par}
                \ABNTifnotempty{\UTFPRdepartamentodata}
				{
					\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRdepartamentodata}\par
				}
				{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRprogramadata}\par}	
		\end{espacosimples}		
	 \end{center}		
		\vspace{12pt}	
		\begin{center}
			\begin{espacosimples}
				{\fontsize{12}{14}\selectfont \MakeUppercase{\ABNTautordata}\\}
				\UTFPRifnotempty{\UTFPRautordoisdata}{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRautordoisdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRautortresdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRautorquatrodata}\\}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
		\vspace{60pt}
		\begin{center}
		  \begin{espacosimples}
		       {\fontsize{12}{14}\selectfont \ABNTchapterfont \ABNTtitulodata \par}
		  \end{espacosimples}
		\end{center}
		\vspace{12pt}
		\begin{center}
			{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRdocumentodata}}%
		\end{center}
		\vfill
		\begin{center}
			\textbf{\MakeUppercase{\ABNTlocaldata}}\par
			\textbf{\ABNTdatadata}
		\end{center}
	\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA TRABALHO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\capatrab}{
	\begin{titlepage}
	   \begin{center}
            \begin{espacosimples}
				{\fontsize{12}{14}\selectfont \MakeUppercase{\ABNTinstituicaodata}}\par
				\UTFPRifnotempty{\UTFPRunidadedata}{{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRunidadedata}}\par}
               \ABNTifnotempty{\UTFPRdepartamentodata}
				{
					{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRdepartamentodata}\par}
				}
				{\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRprogramadata}\par}
                {\fontsize{12}{14}\selectfont \MakeUppercase{\UTFPRlab}\par}
                {\fontsize{12}{13}\selectfont DISCIPLINA: \MakeUppercase{\UTFPRdiscip}\par}
                {\fontsize{12}{13}\selectfont DOCENTE: \MakeUppercase{\ABNTorientadorname}}	
	       \end{espacosimples}		
	 \end{center}		
		\vfill
		\begin{center}
		  \begin{espacosimples}
			\large\ABNTchapterfont \MakeUppercase{\ABNTtitulodata} \par
			\end{espacosimples}
		\end{center}
        \vfill
		\begin{center}
			\begin{espacosimples}
				\large\MakeUppercase{\ABNTautordata}\\
				\UTFPRifnotempty{\UTFPRautordoisdata}{\large\MakeUppercase{\UTFPRautordoisdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\large\MakeUppercase{\UTFPRautortresdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\large\MakeUppercase{\UTFPRautorquatrodata}\\}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
        \vfill
        \begin{center}
			\textbf{\MakeUppercase{\ABNTlocaldata}}\par
			\textbf{\MakeUppercase{\ABNTdatadata}}
		\end{center}
	\end{titlepage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\folhaderosto}
{
	\begin{titlepage}
		\espaco{1.1}
		\begin{center}
			\begin{espacosimples}
				\large\MakeUppercase{\ABNTautordata}\\
				\UTFPRifnotempty{\UTFPRautordoisdata}{\large\MakeUppercase{\UTFPRautordoisdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\large\MakeUppercase{\UTFPRautortresdata}\\}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\large\MakeUppercase{\UTFPRautorquatrodata}\\}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
		\vspace{96pt}
		\begin{center}
			\large\ABNTchapterfont \ABNTtitulodata \par%\MakeUppercase{\ABNTtitulodata}\par
		\end{center}
		\vspace{60pt}
		\hspace{.35\textwidth}	
		\begin{minipage}{.55\textwidth}
			\begin{espacosimples}
				\ABNTcomentariodata \\[1.5mm] \UTFPRorientadorStr: \ABNTorientadordata~  \ABNTorientadorname   \ABNTifnotempty{\UTFPRcoorientadorname}{\\[1.5mm] \UTFPRcoorientadorStr: \UTFPRcoorientadordata~ \UTFPRcoorientadorname}
				\end{espacosimples}		
		\end{minipage}
		\vfill
		\begin{center}
			\textbf{\MakeUppercase{\ABNTlocaldata}}\par
			\textbf{\ABNTdatadata}
		\end{center}
	\end{titlepage}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TERMO DE APROVACAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\ABNTtextoaprovacaodata}{}
\newcommand{\textoaprovacao}[1]{\renewcommand{\ABNTtextoaprovacaodata}{#1}}

\providecommand{\ABNTprimeiroassinanome}{}
\providecommand{\ABNTprimeiroassinadata}{}
\newcommand{\primeiroassina}[2][Doutor]%
{\renewcommand{\ABNTprimeiroassinanome}{#2}%
\renewcommand{\ABNTprimeiroassinadata}{#1}}

\providecommand{\ABNTsegundoassinanome}{}
\providecommand{\ABNTsegundoassinadata}{}
\newcommand{\segundoassina}[2][Doutor]%
{\renewcommand{\ABNTsegundoassinanome}{#2}%
\renewcommand{\ABNTsegundoassinadata}{#1}}

\providecommand{\ABNTterceiroassinanome}{}
\providecommand{\ABNTterceiroassinadata}{}
\newcommand{\terceiroassina}[2][Doutor]%
{\renewcommand{\ABNTterceiroassinanome}{#2}%
\renewcommand{\ABNTterceiroassinadata}{#1}}

\providecommand{\ABNTquartoassinanome}{}
\providecommand{\ABNTquartoassinadata}{}
\newcommand{\quartoassina}[2][Doutor]%
{\renewcommand{\ABNTquartoassinanome}{#2}%
\renewcommand{\ABNTquartoassinadata}{#1}}

\providecommand{\UTFPRdatadefesa}{}
\newcommand{\datadefesaUTFPR}[1]%
	{\renewcommand{\UTFPRdatadefesa}{#1}}

\newcommand{\termodeaprovacao}
{
\if@openright{\cleardoublepage}\else\clearpage\fi
\thispagestyle{empty}
    \espaco{1}
		\begin{center}
			\large\ABNTautordata
		\end{center}
		\vspace{5mm}
		\begin{center}
			\large\ABNTtitulodata
		\end{center}
		\vspace{5mm}
		\begin{espacosimples}
			\ABNTtextoaprovacaodata
		\end{espacosimples}

\setlength{\ABNTsignthickness}{0.4pt}
\setlength{\ABNTsignskip}{6mm}
\setlength{\ABNTsignwidth}{0.7\linewidth}
{\centering \ABNTlocaldata,  \UTFPRdatadefesa.}
\assinatura{\UTFPRcoordenadorname, \UTFPRcoordenadordata \\ \UTFPRcoordenadorStr~do Curso}%
\vspace{1cm}
{\noindent\bfseries\selectfont Banca Examinadora:}
\assinatura{\ABNTorientadorname, \ABNTorientadordata \\ \UTFPRorientadorStr}%
\vfill
\ABNTifnotempty{\UTFPRcoorientadorname}{
\assinatura{\UTFPRcoorientadorname, \UTFPRcoorientadordata \\ \UTFPRcoorientadorStr}
\vfill}
        \ABNTifnotempty{\ABNTprimeiroassinadata}%
		{
		\begin{center}
    	    \assinatura{\ABNTprimeiroassinanome, \ABNTprimeiroassinadata}
            \vfill
		\end{center}
		}
		\ABNTifnotempty{\ABNTsegundoassinadata}%
		{
		\begin{center}
			\assinatura{\ABNTsegundoassinanome, \ABNTsegundoassinadata}
            \vfill
		\end{center}
		}
		\ABNTifnotempty{\ABNTterceiroassinadata}%
		{
		\begin{center}
			\assinatura{\ABNTterceiroassinanome, \ABNTterceiroassinadata}
            \vfill
		\end{center}
		}
		\ABNTifnotempty{\ABNTquartoassinadata}%
		{%
		\begin{center}
			\assinatura{\ABNTquartoassinanome, \ABNTquartoassinadata}
            \vfill
		\end{center}
		}
\espaco{\ABNTespacodefault}
\if@openright\cleardoublepage\else\clearpage\fi
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   DEDICATORIA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{dedicatoria}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.75\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{agradecimentos}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{AGRADECIMENTOS}%
}%
{
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EPIGRAFE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{epigrafe}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{}
	\pretextualchapter{}
	\vfill
	\begin{flushright}
		\begin{minipage}{.75\textwidth}
			\begin{espacosimples}%
				\setlength\parindent{0pt}
				\setlength\parskip{12pt}
}%
{
			\end{espacosimples}
		\end{minipage}
	\end{flushright}
	\newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUMO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{resumo}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{resumo}
	\pretextualchapter{\MakeUppercase{\resumoname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		\UTFPRcitadata. \ABNTtitulodata. \pageref{LastPage} f. \UTFPRdocumentodata\ -- \UTFPRprogramadata,
		\ABNTinstituicaodata. \ABNTlocaldata, \ABNTdatadata.\par
}%
{
		\par \textbf{Palavras-chave:} \UTFPRpalavraschavedata
	\end{espacosimples}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{abstract}%
{%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setchaptertype{abstract}
	\pretextualchapter{\MakeUppercase{\ABNTabstractname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		\UTFPRcitadata. \UTFPRtitledata. \pageref{LastPage} f. \UTFPRdocumentodata\ -- \UTFPRprogramadata,
		\ABNTinstituicaodata. \ABNTlocaldata, \ABNTdatadata. \par
}%
{
		\par \textbf{Keywords:} \UTFPRkeywordsdata
		\end{espacosimples}
	\newpage
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE FIGURAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cria um comando auxiliar para montagem da lista de figuras
\newcommand{\figfillnum}[1]
{
	{\hspace{0em}\normalfont\dotfill}\nobreak
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}
	\begin{spacing}{\taxaespacomeio}\par\end{spacing}
}

% Altera a forma de montagem da lista de figuras
\renewcommand{\listadefiguras}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoffigures}
	\pretextualchapter{LISTA DE FIGURAS}
	\begin{espacosimples}
	\@starttoc{lof}
	\end{espacosimples}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}

\renewcommand*{\l@figure}[2]
{
	\leftskip 3.4em
	\rightskip 1.8em
	\parfillskip -\rightskip
	\parindent 0em
	\@tempdima 2.8em
	--\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\MakeUppercase{Figura} \normalfont #1}\nobreak \figfillnum{#2}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE TABELAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cria um comando auxiliar para montagem da lista de tabelas
\newcommand{\tabfillnum}[1]
{
	{\hspace{0em}\normalfont\dotfill}\nobreak
	\hb@xt@\@pnumwidth{\hfil\normalfont #1}{}
	\begin{spacing}{\taxaespacomeio}\par\end{spacing}
}

% Altera a forma de montagem da lista de tabelas
\renewcommand{\listadetabelas}
{
	\ifthenelse{\boolean{@twocolumn}}
		{\setboolean{ABNTrestorecol}{true}\onecolumn}
		{\setboolean{ABNTrestorecol}{false}}
	\setchaptertype{listoftables}
	\pretextualchapter{LISTA DE TABELAS}
	\begin{espacosimples}
	\@starttoc{lot}
	\end{espacosimples}
	\ifthenelse{\boolean{ABNTrestorecol}}
		{\twocolumn}
		{}
}%

\renewcommand*{\l@table}[2]
{
	\leftskip 3.4em % 3.4em
	\rightskip 1.8em
	\parfillskip -\rightskip
	\parindent 0.em
	\@tempdima 2.8em
	--\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\MakeUppercase{Tabela} \normalfont #1}\nobreak \tabfillnum{#2} %
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIMBOLOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define os comandos que montam a lista de simbolos
\newcommand{\listadesimbolos}
{
	\pretextualchapter{LISTA DE S\'IMBOLOS}
	\begin{espacosimples}  %cesar230511
	\@starttoc{lsb}
	\end{espacosimples}
}

\newcommand{\simbolo}[2]
{
	{\addcontentsline{lsb}{simbolo}{\numberline{#1}{#2}}}#1%
}

\newcommand{\l@simbolo}[2]
{
	\vspace{-0.75cm}
	\leftskip 0em
	\parindent 0em
	\@tempdima 5em
	\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\normalfont #1}\hfil\nobreak\par
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIGLAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \sigla{sigla}{entrada na lista de siglas}:
% Escreve a sigla no texto e uma entrada na Lista de Siglas.
% Se o par�metro opcional � omitido, usa-se o par�metro obrigat�rio.
\newcommand{\sigla}{\@ifstar{\siglaStar}{\siglaNotStar}}	
\newcommand{\siglaNotStar}[2]{%
	\settowidth{\siglawidth}{#1}\ignorespaces
	\ifthenelse{\lengthtest{\siglawidth > \siglamaxwidth}}% Se a nova sigla � maior,
		{\settowidth{\siglamaxwidth}{#1}}% seta o valor da maior com o tamanho da atual.
		{}\ignorespaces
\nomenclature{#1}{#2}%
{#2} ({#1})}

\newcommand{\siglaStar}[2]{%
	\settowidth{\siglawidth}{#1}\ignorespaces
	\ifthenelse{\lengthtest{\siglawidth > \siglamaxwidth}}% Se a nova sigla � maior,
		{\settowidth{\siglamaxwidth}{#1}}% seta o valor da maior com o tamanho da atual.
		{}\ignorespaces
\nomenclature{#1}{#2}%
{#1}}

% Este comando redefine o codigo relevante do nomencl.sty
\newcommand{\fazlistasiglas}[1][Lista de Siglas]{
\def\thenomenclature{%
   \if@openright\cleardoublepage\else\clearpage\fi%
   \pretextualchapter{\nomname}
    \if@intoc\addcontentsline{toc}{chapter}{\nomname}\fi%
  \nompreamble
  \list{}{%
    \labelwidth\nom@tempdim
    \leftmargin\labelwidth
    \advance\leftmargin\labelsep
    \itemsep\nomitemsep
    \let\makelabel\nomlabel}}
\def\endthenomenclature{%
  \endlist
  \nompostamble}%
\makenomenclature%
\renewcommand{\nomname}{#1}
\renewcommand{\nomentryend}{.}%
\setlength{\nomitemsep}{-\parsep}% Tirando espa�o extre entre as entradas na lista.
}

%% Define o comando que monta a lista de siglas
\newcommand{\listadesiglas}{
		 % Abrindo arquivo para leitura e verificando se ele existe:
		 \newread\instream
		 \immediate\openin\instream=\jobname.tmp
		 \ifeof\instream
		 	\message{\jobname.tmp nao existe ainda. Rode o latex novamente.} % Na primeira vez.
       \else
        % \immediate\read\instream to \auxcommand % O primeiro comando � o da lista de simbolos.
       	\immediate\read\instream to \auxcommand % O comando no arquivo temporario � salvo em \auxcommand.
       	\immediate\closein\instream % Fechando o arquivo.
       	\auxcommand % Executando o comando lido.
       \fi
%		 \addtolength{\siglamaxwidth}{1ex}
\printnomenclature[\the\siglamaxwidth]}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SUMARIO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Altera o espacamento entre dots
\renewcommand\@dotsep{2}

% Altera a forma do sumario
\renewcommand{\sumario}{%
	\ifthenelse{\boolean{@twocolumn}}%
	{
		\setboolean{ABNTrestorecol}{true}\onecolumn
	}%
	{
		\setboolean{ABNTrestorecol}{false}
	}%
	\if@openright\cleardoublepage\else\clearpage\fi
  	\pretextualchapter{SUM\'ARIO}%
	\thispagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	\@afterheading
	\@mkboth{\contentsname}{\contentsname}
	\@starttoc{toc}%
	\ifthenelse{\boolean{ABNTrestorecol}}{\twocolumn}{}%
	\if@openright\cleardoublepage\else\clearpage\fi%
	\setboolean{ABNTaftertoc}{true}
}%

%Altera forma de montagem dos capitulos
\renewcommand{\l@chapter}[2]
{
	\ifnum
		\c@tocdepth > \m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{1.5em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
			{
				\renewcommand{\@pnumwidth}{1.6em}
			}{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\leavevmode \normalsize \ABNTtocchapterfont
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\hspace{0.4em}\nobreak\dotfill\nobreak
			\ifthenelse{\boolean{ABNTpagenumstyle}}
			{%
				\hb@xt@\@pnumwidth{\hss
				\ifthenelse{\not\equal{#2}{}}{{#2}}{}}
				\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			}
			{%
				\hb@xt@\@pnumwidth{\hss #2}\par
			}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das secoes
\renewcommand{\l@section}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{2em}%
		\begingroup
			\ifthenelse{\boolean{ABNTpagenumstyle}}
				{\renewcommand{\@pnumwidth}{1.6em}}
				{}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
                        #1\hspace{0.4em}\nobreak\dotfill\nobreak
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

% interface de suporte para os comandos \chapter[nouppercase]{...} e \section[nouppercase]{...}
\let\realchapter\chapter
\renewcommand{\chapter}[2][uppercase]
{
  \ifthenelse{\equal{#1}{nouppercase}}{\realchapter{#2}}{\realchapter{\MakeUppercase{#2}}}
}
\let\realsection\section
\renewcommand{\section}[2][uppercase]
{
  \ifthenelse{\equal{#1}{nouppercase}}{\realsection{#2}}{\realsection{\MakeUppercase{#2}}}
}

%Altera forma de montagem das subsecoes
\renewcommand{\l@subsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{2.5em}%
		\begingroup
			\renewcommand{\@pnumwidth}{1.6em}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\hspace{0.4em}\nobreak\dotfill\nobreak
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}

%Altera forma de montagem das subsubsecoes
\renewcommand{\l@subsubsection}[2]
{
	\ifnum \c@tocdepth >\m@ne
		\addpenalty{-\@highpenalty}%
		\setlength\@tempdima{3em}%
		\begingroup
			\renewcommand{\@pnumwidth}{1.6em}
			\parindent \z@ \rightskip \@pnumwidth
			\parfillskip -\@pnumwidth
			\advance\leftskip\@tempdima
			\hskip -\leftskip
			#1\hspace{0.4em}\nobreak\dotfill\nobreak
			\hb@xt@\@pnumwidth{\hss{#2}}
			\begin{spacing}{\taxaespacomeio}\par\end{spacing}
			\penalty\@highpenalty
		\endgroup
	\fi
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPITULOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Altera o tamanho das fontes
\renewcommand{\ABNTchapterfont}{\bfseries}
\renewcommand{\ABNTchaptersize}{\normalsize}
\renewcommand{\ABNTsectionfont}{\normalfont}
\renewcommand{\ABNTsectionfontsize}{\normalsize}
\renewcommand{\ABNTsubsectionfont}{\normalfont}
\renewcommand{\ABNTsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTsubsubsectionfont}{\normalfont}
\renewcommand{\ABNTsubsubsectionfontsize}{\normalsize}
\renewcommand{\ABNTanapsize}{\normalsize}

% Altera titulo das subsecoes (lowercase)
\def\ABNTsect#1#2#3#4#5#6[#7]#8{%
  \ifnum #2>\c@secnumdepth
    \let\@svsec\@empty
  \else
    \refstepcounter{#1}%
    \protected@edef\@svsec{\@seccntformat{#1}\relax}%
  \fi
  \@tempskipa #5\relax
  \ifdim \@tempskipa>\z@
    \begingroup
      #6{%
        \@hangfrom{\hskip #3\relax\@svsec}%
          \interlinepenalty \@M
					\ifnum #2<\c@secnumdepth%
	          \ifthenelse{\boolean{ABNTcapsec}}
	             {\MakeUppercase{#8}}{#8}\@@par%
					\else%
	             {#8}\@@par% lowercase
					\fi}%
    \endgroup
    \@ifundefined{ABNT#1mark}{}{\csname ABNT#1mark\endcsname{#7}}
    \ABNTaddcontentsline{toc}{#1}{%
      \ifnum #2>\c@secnumdepth \else
        \protect\numberline{\csname the#1\endcsname}%
      \fi
      #7}%
  \else
    \def\@svsechd{%
      #6{\hskip #3\relax
      \@svsec \ifthenelse{\boolean{ABNTcapsec}}
             {\MakeUppercase{#8}}{#8}}%
      \@ifundefined{ABNT#1mark}{}{\csname ABNT#1mark\endcsname{#7}}
      \ABNTaddcontentsline{toc}{#1}{%
        \ifnum #2>\c@secnumdepth \else
          \protect\numberline{\csname the#1\endcsname}%
        \fi
        #7}}%
  \fi
  \@xsect{#5}}



% Altera o espacamento das linhas dos capitulos e apendices
\newcommand*{\taxaespacomeio}{.5}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% NUMERACAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Define o tipo de numeracao de figuras, tabelas e equacoes
\AddAbsoluteCounter{figure}
\setcounter{absfigure}{0}
\renewcommand{\thefigure}{\arabic{absfigure}}
\AddAbsoluteCounter{table}
\setcounter{abstable}{0}
\renewcommand{\thetable}{\arabic{abstable}}
\AddAbsoluteCounter{equation}
\setcounter{absequation}{0}
\renewcommand{\theequation}{\arabic{absequation}}

% Define o tipo de numeracao das paginas
\renewcommand{\chaptertitlepagestyle}{plain}

% Altera a posicao da numeracao de paginas dos elementos pre-textuais
\renewcommand{\pretextualchapter}
{
	\if@openright\cleardoublepage\else\clearpage\fi
	\pagestyle{\chaptertitlepagestyle}
	\global\@topnum\z@
	\@afterindentfalse
	\renewcommand{\thepage}{}
	\@schapter
}

% Altera a posicao da numeracao de paginas dos elementos textuais
\renewcommand{\ABNTchaptermark}[1]
{
	\ifthenelse{\boolean{ABNTNextOutOfTOC}}
		{\markboth{\ABNTnextmark}{\ABNTnextmark}}
		{\chaptermark{#1}
	\pagestyle{\chaptertitlepagestyle}}
}

% Redefine o tipo de numeracao das paginas
\renewcommand{\ABNTBeginOfTextualPart}
{
  \if@twoside							%
		\@twosidetrue \@mparswitchtrue
	\fi			
	\renewcommand{\chaptertitlepagestyle}{plainheader}
	\renewcommand{\thepage}{\arabic{page}}
	\addtocounter{page}{1}

% Observacoes:
% \@twosidetrue considera as paginas pares e impares.
% A numeracao sempre fica no canto superior externo da pagina.
% \@mparswitchtrue  inverte o tamanho das margens esquerda e
% direita para p�ginas pares, pois as margens devem ser sim�tricas para p�ginas opostas.
}

%Altera o tamanho da indentacao do paragrafo
\setlength{\parindent}{1.5cm} %


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LEGENDAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\captionfonts}{\small}

\long\def\@makecaption#1#2{
	\vskip\abovecaptionskip
	\sbox\@tempboxa{{\captionfonts \textbf{#1: #2}}}%
	\ifdim \wd\@tempboxa >\hsize
		{\captionfonts \textbf{#1: #2}\par}
	\else
		\hbox to\hsize{\hfil\box\@tempboxa\hfil}%
	\fi
	\vskip\belowcaptionskip
}

\newcommand{\fonte}[1]
{
	\begin{flushleft}
		\begin{spacing}{\taxaespacomeio}
			\par
		\end{spacing}
		\centering\small{\textbf{Fonte: #1}}
	\end{flushleft}
}

\renewcommand{\fnum@figure}{\textbf{\figurename~\thefigure}}
\renewcommand{\fnum@table}{\textbf{\tablename~\thetable}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REFERENCIAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\ABNTbibliographyname}{REFER\^ENCIAS}


%%% Outros Ajustes:
\renewenvironment{quote}{\list{}{\leftmargin=4cm\rightmargin=0cm\footnotesize\singlespace}\item[]}{\endlist}  %ajuste para citacao direta: para mais de 3 linhas, deve estar em um par�grafo pr�prio, com recuo de 4cm, espacamento simples e fonte tamanho 10

%% permite mais de tr�s n�veis no sum�rio
\setcounter{secnumdepth}{10}
\setcounter{tocdepth}{10}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtEndDocument{%
\typeout{+===================================================================+}
\typeout{|      Modelo de teses e disserta��es da UTFPR.                }
\typeout{|      Alterado conforme regras de 2009.       }
\typeout{|      Desenvolvido por                                 }
\typeout{|      Vers�o:                                             }
\typeout{|   $LastChangedDate: 2009-07-17 15:33:40 -0300 (sex, 17 jul 2009)$  }
\typeout{+===================================================================+}

% Salvando arquivo tempor�rio com dados a serem utilizados na pr�xima "rodada"
% do latex.
\newwrite\outputstream
\immediate\openout\outputstream=\jobname.tmp
% Salvando comando contendo a largura da maior sigla:
\immediate\write\outputstream{\string\setlength{\siglamaxwidth}{\the\siglamaxwidth}}
% Fechando stream:
\immediate\closeout\outputstream
}%