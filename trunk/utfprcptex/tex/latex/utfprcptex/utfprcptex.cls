%% version 1.0
%% utfprcptex.cls
%% Copyright 2011      Rodrigo Rodrigues Sumar <sumar@utfpr.edu.br>
%% Copyright 2011      Bruno Augusto Angélico <bangelico@utfpr.edu.br>
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
% dependência: abntex >= 0.9-beta2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Primeira parte: Identificação
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Esta é uma classe Latex2e:
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{utfprcptex}[2011/12/12 Classe de Normas para Trabalhos da UTFPR]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{abnt}}
\ProcessOptions
\LoadClass[cleardoublepage=plain,
pagestart=firstchapter,
chapter=TITLE,
section=TITLE
]{abnt}
\RequirePackage[brazil]{babel} % pacote portugues brasileiro
\RequirePackage[latin1]{inputenc} % pacote para acentuacao direta
\RequirePackage[T1]{fontenc}
\RequirePackage{array}
\RequirePackage{rotating}
\RequirePackage{multirow}
\RequirePackage{colortbl}
\RequirePackage{hhline}
\RequirePackage{ifthen}
\RequirePackage{lastpage}
\RequirePackage{perpage}
\RequirePackage[overload]{textcase}
\RequirePackage{fancyhdr}
\RequirePackage{xcolor}
\usepackage{remreset}		% reinicia contadores
\definecolor{meucinza}{rgb}{0.5, 0.5, 0.5}
\PassOptionsToPackage{hyperindex=false}{hyperref}
\RequirePackage{nomencl} % Pacote necessário para a lista de siglas.
% O comando a seguir executa o makeindex automaticamente
%para ordenar automaticamente a lista de siglas
\immediate\write18{makeindex \jobname.nlo -s nomencl.ist -o \jobname.nls}\relax

\RequirePackage[format=hang,singlelinecheck=false,labelfont=bf,labelsep=endash,textfont=bf,justification=justified]{caption}

\makeatletter	%Para que se entenda o @


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Segunda parte: Declaração das opções da UTFPR
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Logotipo:
\newcommand{\utfprtex}{{\rm U\kern-.15em\lower.7ex\hbox{T}\kern-.125em{FPRCP}\kern-.125em T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

\newlength{\siglawidth}
\newlength{\siglamaxwidth}
\newlength{\simbwidth}
\newlength{\simbmaxwidth}
% Comando para selecionar o tipo de fonte
\newcommand{\fontetipo}[1]%
{
\ifthenelse{\equal{#1}{times}}
           {\usepackage{times}}{} % Times (Nimbus Roman)
\ifthenelse{\equal{#1}{arial}}
           {\renewcommand*\familydefault{\sfdefault}\usepackage[scaled]{uarial}}{}% Arial
}

\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ENTRADAS REFERENTES A INSTITUICAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\UTFPRunidadedata}{}
\newcommand{\unidade}[1]{\renewcommand{\UTFPRunidadedata}{#1}}

\providecommand{\UTFPRabrev}{}
\newcommand{\abreviatura}[1]{\renewcommand{\UTFPRabrev}{#1}}

\providecommand{\UTFPRdiretoriadata}{}
\newcommand{\diretoria}[1]{\renewcommand{\UTFPRdiretoriadata}{#1}}

\providecommand{\UTFPRcoordenacaodata}{}
\newcommand{\coordenacao}[1]{\renewcommand{\UTFPRcoordenacaodata}{#1}}

\providecommand{\UTFPRcursodata}{}
\newcommand{\curso}[1]{\renewcommand{\UTFPRcursodata}{#1}}

\providecommand{\UTFPRareadata}{}
\newcommand{\area}[1]{\renewcommand{\UTFPRareadata}{#1}}

\providecommand{\UTFPRniveldata}{}
\newcommand{\nivel}[1]{\renewcommand{\UTFPRniveldata}{#1}}

\providecommand{\UTFPRtitulacaodata}{}
\newcommand{\titulacao}[1]{\renewcommand{\UTFPRtitulacaodata}{#1}}

\providecommand{\UTFPRdiscip}{}
\newcommand{\discipUTFPR}[1]{\renewcommand{\UTFPRdiscip}{#1}}

\providecommand{\UTFPRlab}{}
\newcommand{\labUTFPR}[1]{\renewcommand{\UTFPRlab}{#1}}

\providecommand{\UTFPRcoordenadorname}{}
\providecommand{\UTFPRcoordenadordata}{}
\providecommand{\UTFPRcoordenadorStr}{}
\newcommand{\coordenadorUTFPR}[3][Coordenador]%
  {\renewcommand{\UTFPRcoordenadorname}{#3}%
   \renewcommand{\UTFPRcoordenadordata}{#2}
   \renewcommand{\UTFPRcoordenadorStr}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ENTRADAS REFERENTES AOS AUTORES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\UTFPRautordoisdata}{}
\newcommand{\autordois}[1]{\renewcommand{\UTFPRautordoisdata}{#1}}

\providecommand{\UTFPRautortresdata}{}
\newcommand{\autortres}[1]{\renewcommand{\UTFPRautortresdata}{#1}}

\providecommand{\UTFPRautorquatrodata}{}
\newcommand{\autorquatro}[1]{\renewcommand{\UTFPRautorquatrodata}{#1}}

\providecommand{\UTFPRautorcincodata}{}
\newcommand{\autorcinco}[1]{\renewcommand{\UTFPRautorcincodata}{#1}}

\providecommand{\UTFPRcitadata}{}
\newcommand{\cita}[1]{\renewcommand{\UTFPRcitadata}{#1}}

%%% USADOS NO MODELO DE PRE PROJETOS %%%%%%
\providecommand{\UTFPRemailaluno}{}
\newcommand{\emailaluno}[1]{\renewcommand{\UTFPRemailaluno}{#1}}

\providecommand{\UTFPRfone}{}
\newcommand{\fonealuno}[1]{\renewcommand{\UTFPRfone}{#1}}
%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ENTRADAS REFERENTES AO DOCUMENTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\providecommand{\UTFPRdocumentodata}{}
\newcommand{\documento}[1]{\renewcommand{\UTFPRdocumentodata}{#1}}

\providecommand{\UTFPRtitledata}{}
\renewcommand{\title}[1]{\renewcommand{\UTFPRtitledata}{#1}}

\providecommand{\UTFPRpalavraschavedata}{}
\newcommand{\palavraschave}[1]{\renewcommand{\UTFPRpalavraschavedata}{#1}}

\providecommand{\UTFPRkeywordsdata}{}
\newcommand{\keywords}[1]{\renewcommand{\UTFPRkeywordsdata}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% ENTRADAS REFERENTES AOS ORIENTADORS E MEMBROS DA BANCA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\providecommand{\UTFPRorientadorStr}{}
\renewcommand{\orientador}[3][Orientador]%
  {\renewcommand{\ABNTorientadorname}{#3}%
   \renewcommand{\ABNTorientadordata}{#2}
   \renewcommand{\UTFPRorientadorStr}{#1}
}

\providecommand{\UTFPRcoorientadorname}{}
\providecommand{\UTFPRcoorientadordata}{}
\providecommand{\UTFPRcoorientadorStr}{}
\renewcommand{\coorientador}[3][Co-orientador]%
  {\renewcommand{\UTFPRcoorientadorname}{#3}%
   \renewcommand{\UTFPRcoorientadordata}{#2}%
   \renewcommand{\UTFPRcoorientadorStr}{#1}
}

%%% USADOS NO MODELO DE PRE PROJETOS %%%%%%
\providecommand{\UTFPRemailori}{}
\newcommand{\emailorientador}[1]{\renewcommand{\UTFPRemailori}{#1}}

\providecommand{\UTFPRemailcoori}{}
\newcommand{\emailcoorientador}[1]{\renewcommand{\UTFPRemailcoori}{#1}}
%%%%%%

%200611: mais coorientadores
\providecommand{\UTFPRcoorientadorbdata}{}
\newcommand{\coorientadorb}[1]{\renewcommand{\UTFPRcoorientadorbdata}{#1}}

%%%%%%%% OUTROS COMANDOS %%%%%%%%%%%%%
\newcommand{\UTFPRifnotempty}[3]{\ifthenelse{\not\equal{#1}{}}{#2}{#3}}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA DISSERTACAO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\capa}{
\if@openright		% Garante que se a página for "direita"
     \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
		\begin{center}
		  \begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTinstituicaodata}\par}
				\ABNTifnotempty{\UTFPRunidadedata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRunidadedata}\par}
                \ABNTifnotempty{\UTFPRdiretoriadata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRdiretoriadata}\par}
                \ABNTifnotempty{\UTFPRcoordenacaodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcoordenacaodata}\par}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcursodata}\par}	
		\end{espacosimples}		
	 \end{center}		
		\vspace{12pt}	
		\begin{center}
			\begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTautordata}\par}
				\UTFPRifnotempty{\UTFPRautordoisdata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautordoisdata}\par}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautortresdata}\par}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautorquatrodata}\par}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
		\vspace{60pt}
		\begin{center}
		  \begin{espacosimples}
		       {\fontsize{14}{14}\selectfont \bf \ABNTtitulodata \par}
		  \end{espacosimples}
		\end{center}
		\vspace{12pt}
		\begin{center}
			{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRdocumentodata} \par}%
		\end{center}
		\vfill
		\begin{center}
			{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTlocaldata} \par}
			{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTdatadata}} 
		\end{center}
\vspace{1cm}
\if@restonecol\twocolumn \else \newpage \fi
\if@twoside\setcounter{page}\z@ \else\setcounter{page}{1} \fi	% Reseta o contador de páginas. Parece não ser necessário aqui
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA TRABALHO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\capatrab}{
\if@twocolumn
  \@restonecoltrue\onecolumn
\else
  \@restonecolfalse\newpage
\fi
\thispagestyle{empty}
	   \begin{center}
            \begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTinstituicaodata}}\par
				\UTFPRifnotempty{\UTFPRunidadedata}{{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRunidadedata}}\par}
                \ABNTifnotempty{\UTFPRdiretoriadata}{{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRdiretoriadata}\par}}
                \ABNTifnotempty{\UTFPRcoordenacaodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcoordenacaodata}\par}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcursodata}\par}
                {\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRlab}\par}
                {\fontsize{12}{13}\selectfont \bf DISCIPLINA: \MakeUppercase{\UTFPRdiscip}\par}
                {\fontsize{12}{13}\selectfont \bf DOCENTE: \MakeUppercase{\ABNTorientadorname}}	
	       \end{espacosimples}		
	 \end{center}		
		\vfill
		\begin{center}
		  \begin{espacosimples}
			{\fontsize{14}{14}\selectfont \bf \MakeUppercase{\ABNTtitulodata}} \par
			\end{espacosimples}
		\end{center}
        \vfill
		\begin{center}
			\begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTautordata}}\par
				\UTFPRifnotempty{\UTFPRautordoisdata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautordoisdata}\par}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautortresdata}\par}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautorquatrodata}\par}{\vspace{18pt}}
                \UTFPRifnotempty{\UTFPRautorcincodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautorcincodata}\par}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
        \vfill
        \begin{center}
			{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTlocaldata}}\par
			{\fontsize{12}{14}\selectfont \bf  \MakeUppercase{\ABNTdatadata}}
		\end{center}
\if@restonecol\twocolumn \else \newpage \fi
\if@twoside\setcounter{page}\z@ \else\setcounter{page}{1} \fi	% Reseta o contador de páginas. Parece não ser necessário aqui
\espaco{\ABNTespacodefault}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% CAPA PARA PRE-PROPOSTA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\capapre}{
\UTFPRifnotempty{\UTFPRcoorientadorname}
% SE TIVER COOORIENTADOR
{ \fontsize{12}{14}\selectfont
     \if@twocolumn
  \@restonecoltrue\onecolumn
\else
  \@restonecolfalse\newpage
\fi
\thispagestyle{empty}
     \renewcommand{\thepage}{}
       \begin{center}
		  \begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTinstituicaodata}\par}
				\ABNTifnotempty{\UTFPRunidadedata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRunidadedata}\par}
                \ABNTifnotempty{\UTFPRdiretoriadata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRdiretoriadata}\par}
                \ABNTifnotempty{\UTFPRcoordenacaodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcoordenacaodata}\par}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcursodata}\\}	
		\end{espacosimples}		
	 \end{center}
      \noindent \newline
      \begin{center}
      \begin{tabular}{| C{5cm} |}
            \hline
           \fontsize{14}{14}\selectfont  \bf PRÉ-PROJETO \\
            \hline
      \end{tabular}\vspace{30pt}
      \end{center}
     \begin{center}
		  \begin{espacosimples}
		       {\fontsize{14}{14}\selectfont  \bf \ABNTtitulodata \par}
		  \end{espacosimples}
	 \end{center}\vspace{12pt}
    \begin{espacosimples} \noindent
     \begin{tabular}{| m{0.25\linewidth} | m{0.25\linewidth} |m{0.25\linewidth}|m{0.25\linewidth}|}
            \hline
            \textbf{Nome:} & \textbf{Código:} & \textbf{Telefone:} & \textbf{E-mail:} \\
            {\fontsize{12}{14}\selectfont \ABNTautordata} & 123456 & \UTFPRfone & \texttt{\UTFPRemailaluno}\\
            \hline
            \multicolumn{2}{|l|}{\fontsize{12}{14}\selectfont \textbf{\UTFPRorientadorStr:}} & \multicolumn{2}{l|}{\textbf{Assinatura do orientador:}}\\
            \multicolumn{2}{|l|}{\fontsize{12}{14}\selectfont \ABNTorientadordata~  \ABNTorientadorname} &  \multicolumn{2}{l|}{}\\
            \multicolumn{2}{|l|}{\textbf{E-mail do orientador:}} & \multicolumn{2}{l|} {}\\
            \multicolumn{2}{|l|}{\texttt{\UTFPRemailori}} &  \multicolumn{2}{l|}{} \\
            \hline
            \multicolumn{2}{|l|}{\fontsize{12}{14}\selectfont \textbf{\UTFPRcoorientadorStr:}} & \multicolumn{2}{l|}{\textbf{Assinatura do coorientador:}}\\
            \multicolumn{2}{|l|}{\fontsize{12}{14}\selectfont \UTFPRcoorientadordata~  \UTFPRcoorientadorname} &  \multicolumn{2}{l|}{} \\
            \multicolumn{2}{|l|}{\textbf{E-mail do coorientador:}} & \multicolumn{2}{l|} {}\\
            \multicolumn{2}{|l|}{\texttt{\UTFPRemailcoori}} &  \multicolumn{2}{l|}{} \\ \hline
      \end{tabular}
      \end{espacosimples}
      \vfill
      \begin{center}
			{\fontsize{12}{14}\selectfont  \bf \MakeUppercase{\ABNTlocaldata} \par}
			{\fontsize{12}{14}\selectfont  \bf \MakeUppercase{\ABNTdatadata}}
		\end{center}
\if@restonecol\twocolumn \else \newpage \fi
\if@twoside\setcounter{page}\z@ \else\setcounter{page}{1} \fi	% Reseta o contador de páginas. Parece não ser necessário aqui
} 
% SE NAO TIVER 
{ \fontsize{12}{14}\selectfont
\if@twocolumn
  \@restonecoltrue\onecolumn
\else
  \@restonecolfalse\newpage
\fi
\thispagestyle{empty}
     \renewcommand{\thepage}{}
           \begin{center}
		  \begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTinstituicaodata}\par}
				\ABNTifnotempty{\UTFPRunidadedata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRunidadedata}\par}
                \ABNTifnotempty{\UTFPRdiretoriadata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRdiretoriadata}\par}
                \ABNTifnotempty{\UTFPRcoordenacaodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcoordenacaodata}\par}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRcursodata}\\}	
		\end{espacosimples}		
	 \end{center}
      \noindent \newline
      \begin{center}
      \begin{tabular}{| C{5cm} |}
            \hline
            \fontsize{14}{14}\selectfont  \bf PRÉ-PROJETO \\ 
            \hline
      \end{tabular}\vspace{30pt}
      \end{center}
     \begin{center}
		  \begin{espacosimples}
		       {\fontsize{14}{14}\selectfont  \bf \ABNTtitulodata \par}
		  \end{espacosimples}
	 \end{center}\vspace{12pt}
    \begin{espacosimples}\noindent
     \begin{tabular}{| m{0.25\linewidth} | m{0.25\linewidth} |m{0.25\linewidth}|m{0.25\linewidth}|}
            \hline
            \noindent \textbf{Nome:} & \textbf{Código:} & \textbf{Telefone:} & \textbf{E-mail:} \\
            {\fontsize{12}{14}\selectfont \ABNTautordata} & 123456 & \UTFPRfone & \texttt{\UTFPRemailaluno}\\
            \hline
            \multicolumn{2}{|l|}{\fontsize{12}{14}\selectfont \textbf{\UTFPRorientadorStr:}} & \multicolumn{2}{l|}{\textbf{Assinatura do orientador:}}\\
            \multicolumn{2}{|l|}{\fontsize{12}{14}\selectfont \ABNTorientadordata~  \ABNTorientadorname} &  \multicolumn{2}{l|}{}\\
            \multicolumn{2}{|l|}{\textbf{E-mail do orientador:}} & \multicolumn{2}{l|} {}\\
            \multicolumn{2}{|l|}{\texttt{\UTFPRemailori}} &  \multicolumn{2}{l|}{} \\
            \hline
     \end{tabular}
      \end{espacosimples}
      \vfill
      \begin{center}
			{\fontsize{12}{14}\selectfont  \bf \MakeUppercase{\ABNTlocaldata} \par}
			{\fontsize{12}{14}\selectfont  \bf \MakeUppercase{\ABNTdatadata}}
		\end{center}
\if@restonecol\twocolumn \else \newpage \fi
\if@twoside\setcounter{page}\z@ \else\setcounter{page}{1} \fi	% Reseta o contador de páginas. Parece não ser necessário aqui
}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FOLHA DE ROSTO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\folhaderosto}[1][semficha]
{
\if@openright		% Garante que se a página for "direita"
    \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\renewcommand{\thepage}{}
\thispagestyle{empty} 	% Define o estilo desta página como vazio
    \espaco{1.1}
		\begin{center}
			\begin{espacosimples}
				{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\ABNTautordata}}\par
				\UTFPRifnotempty{\UTFPRautordoisdata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautordoisdata}\par}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautortresdata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautortresdata}\par}{\vspace{18pt}}
				\UTFPRifnotempty{\UTFPRautorquatrodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautorquatrodata}\par}{\vspace{18pt}}
                \UTFPRifnotempty{\UTFPRautorcincodata}{\fontsize{12}{14}\selectfont \bf \MakeUppercase{\UTFPRautorcincodata}\par}{\vspace{18pt}}
			\end{espacosimples}
		\end{center}
		\vspace{96pt}
		\begin{center}
			{\fontsize{14}{14}\selectfont  \bf \ABNTtitulodata \par}
		\end{center}
		\vspace{60pt}
		\hspace{.35\textwidth}	
		\begin{minipage}{.55\textwidth}
			\begin{espacosimples}
				\fontsize{12}{14}\selectfont \ABNTcomentariodata \\[1.5mm] \UTFPRorientadorStr: \ABNTorientadordata~  \ABNTorientadorname   \ABNTifnotempty{\UTFPRcoorientadorname}{\\[1.5mm] \UTFPRcoorientadorStr: \UTFPRcoorientadordata~ \UTFPRcoorientadorname}
				\end{espacosimples}		
		\end{minipage}
		\vfill
		\begin{center}
			{\fontsize{12}{14}\selectfont  \bf \MakeUppercase{\ABNTlocaldata} \par}
			{\fontsize{12}{14}\selectfont  \bf \MakeUppercase{\ABNTdatadata}}
		\end{center}
\vspace{1cm}
\ifthenelse{\equal{#1}{comficha}}
    {%\newpage
     \mbox{}
     \vfill
     \conteudofichacatalografica
    }{}
}
%%%%%%%
%%%% Ficha catalografica
%%%%%%%
\providecommand{\UTFPRassuntoum}{}
\providecommand{\UTFPRassuntodois}{}
\providecommand{\UTFPRassuntotres}{}
\providecommand{\UTFPRassuntoquatro}{}
\newcommand{\assuntos}[4]{
                     \renewcommand{\UTFPRassuntoum}{#1}
                     \renewcommand{\UTFPRassuntodois}{#1}
                     \renewcommand{\UTFPRassuntotres}{#1}
                     \renewcommand{\UTFPRassuntoquatro}{#4}
                     }
\providecommand{\UTFPRcutter}{}
\newcommand{\cutter}[1]{\renewcommand{\UTFPRcutter}{#1}}

\providecommand{\UTFPRcdd}{}
\newcommand{\cdd}[1]{\renewcommand{\UTFPRcdd}{#1}}

\newcommand{\conteudofichacatalografica}{
\include{fichacatalografica}
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

\fancypagestyle{aprovacao}{
\fancyhf{}
\setlength{\headheight}{18mm}
\renewcommand{\headrule}{\hrule height\headrulewidth \vspace{0.3mm} {\color{yellow} \hrule width\headwidth height\headrulewidth \vskip-\headrulewidth}}
\addtolength{\headheight}{\baselineskip}
\renewcommand{\headrulewidth}{1pt}
\lhead{
\begin{minipage}[c][24mm][c]{30mm}
\centering \includegraphics[width=22mm]{brasao.png}
\end{minipage}
}
\chead{
\begin{minipage}[c][24mm][c]{100mm}
\begin{center}
\begin{espacosimples}
{\fontsize{10}{12}\selectfont Minstério da Educação \\}
{\fontsize{10}{12}\selectfont \ABNTinstituicaodata \\}
{\fontsize{10}{12}\selectfont  \UTFPRunidadedata \\}
\ABNTifnotempty{\UTFPRdiretoriadata}{\fontsize{10}{12}\selectfont \UTFPRdiretoriadata \\}
\ABNTifnotempty{\UTFPRcoordenacaodata}{\fontsize{10}{12}\selectfont \UTFPRcoordenacaodata \\}
\ABNTifnotempty{\UTFPRcursodata}{\fontsize{10}{12}\selectfont \UTFPRcursodata \\}	
\end{espacosimples}		
\end{center}
\end{minipage}
}
\rhead{
\begin{minipage}[c][24mm][c]{30mm}
\centering \includegraphics[width=30mm]{logo-utfpr.png}
\end{minipage}
}
}


\newcommand{\termodeaprovacao}
{
\if@openright		% Garante que se a página for "direita"
    \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
\renewcommand{\thepage}{}
\thispagestyle{aprovacao}
    \espaco{1}
        \begin{center}
			\textbf{TERMO DE APROVAÇÃO} \\[20pt]
			\ABNTtitulodata \\[10pt]
			por \\[10pt]
    		\ABNTautordata \\[-10mm]
		\end{center}
		\begin{espacosimples}
			\ABNTtextoaprovacaodata
		\end{espacosimples}

\setlength{\ABNTsignthickness}{0.4pt}
\setlength{\ABNTsignskip}{6mm}
\setlength{\ABNTsignwidth}{0.7\linewidth}
{\centering \ABNTlocaldata,  \UTFPRdatadefesa.}
\assinatura{\UTFPRcoordenadorname, \UTFPRcoordenadordata \\ \UTFPRcoordenadorStr~do Curso}%
%\vspace{8mm}
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
\thispagestyle{empty}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   DEDICATORIA
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{dedicatoria}%
{
\if@openright		% Garante que se a página for "direita"
   \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
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
\if@openright\cleardoublepage\else\clearpage\fi
\thispagestyle{empty}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AGRADECIMENTOS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{agradecimentos}%
{%
\if@openright		% Garante que se a página for "direita"
    \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
	\pretextualchapter{AGRADECIMENTOS}%
}%
{
\if@openright\cleardoublepage\else\clearpage\fi%
\thispagestyle{empty} 	% Define o estilo desta página como vazio
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EPIGRAFE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newenvironment{epigrafe}%
{%
\if@openright		% Garante que se a página for "direita"
    \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
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
\if@openright\cleardoublepage\else\clearpage\fi
\thispagestyle{empty}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% RESUMO
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{resumo}%
{%
\if@openright		% Garante que se a página for "direita"
    \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
	\pretextualchapter{\MakeUppercase{\resumoname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		\UTFPRcitadata. \ABNTtitulodata. \pageref{LastPage} f. \UTFPRdocumentodata\ -- \UTFPRcursodata,
		\ABNTinstituicaodata. \ABNTlocaldata, \ABNTdatadata.\par
}%
{
		\par \textbf{Palavras-chave:} \UTFPRpalavraschavedata
	\end{espacosimples}
\if@openright\cleardoublepage\else\clearpage\fi
\thispagestyle{empty}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ABSTRACT
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewenvironment{abstract}%
{%
\if@openright		% Garante que se a página for "direita"
    \cleardoublepage	% ele pula uma página para deixar o anverso em branco
\else
    \clearpage
\fi
\if@twocolumn		% Força que a página seja de uma coluna apenas
    \@restonecoltrue\onecolumn
\else
    \@restonecolfalse\newpage
\fi
\thispagestyle{empty} 	% Define o estilo desta página como vazio
	\pretextualchapter{\MakeUppercase{\ABNTabstractname}}%
	\begin{espacosimples}%
		\setlength\parindent{0pt}
		\setlength\parskip{12pt}
		\UTFPRcitadata. \UTFPRtitledata. \pageref{LastPage} f. \UTFPRdocumentodata\ -- \UTFPRcursodata,
		\ABNTinstituicaodata. \ABNTlocaldata, \ABNTdatadata. \par
}%
{
		\par \textbf{Keywords:} \UTFPRkeywordsdata
		\end{espacosimples}
\if@openright\cleardoublepage\else\clearpage\fi
\thispagestyle{empty}
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
%	\setchaptertype{listoftables}
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
	{\setlength{\parindent}{0cm}
	 % Abrindo arquivo para leitura e verificando se ele existe:
		 \newread\instream
		 \immediate\openin\instream= \jobname.tmp
		 \ifeof\instream
		 	\message{\jobname.tmp nao existe ainda. Rode o latex novamente.} % Na primeira vez.
       \else
       	\immediate\read\instream to \auxcommand % O comando no arquivo temporario é salvo em \auxcommand.
       	\immediate\closein\instream % Fechando o arquivo.
       	\auxcommand % Executando o comando lido.
       \fi
	 \addtolength{\simbmaxwidth}{1em}
	 \@starttoc{los}}
	\end{espacosimples}
}

\newcommand{\simbolo}[2]
{
     \settowidth{\simbwidth}{#1}\ignorespaces
     \ifthenelse{\lengthtest{\simbwidth > \simbmaxwidth}} % Se o novo simbolo é maior,
     {\settowidth{\simbmaxwidth}{#1}} % seta o valor da maior com o tamanho da atual.
     {}\ignorespaces
	  \ifthenelse{\equal{#2}{}}
		  {\addcontentsline{los}{simbolo}{\protect\parbox[t]{\protect\simbmaxwidth}{#1}}}
		  {\addcontentsline{los}{simbolo}{\protect\parbox[t]{\protect\simbmaxwidth}{#1} \protect\parbox[t]{\protect\textwidth - \protect\simbmaxwidth}{#2}}}\ignorespaces #1
}

% como a entrada ser´a impressa
\newcommand\l@simbolo[2]{
	\parbox[b]{\textwidth}{#1}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LISTA DE SIGLAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% \sigla{sigla}{entrada na lista de siglas}:
% Escreve a sigla no texto e uma entrada na Lista de Siglas.
% Se o parâmetro opcional á omitido, usa-se o parâmetro obrigatório.
\newcommand{\sigla}{\@ifstar{\siglaStar}{\siglaNotStar}}	
\newcommand{\siglaNotStar}[2]{%
	\settowidth{\siglawidth}{#1}\ignorespaces
	\ifthenelse{\lengthtest{\siglawidth > \siglamaxwidth}}% Se a nova sigla é maior,
		{\settowidth{\siglamaxwidth}{#1}}% seta o valor da maior com o tamanho da atual.
		{}\ignorespaces
\nomenclature{#1}{#2}%
{#2} ({#1})}

\newcommand{\siglaStar}[2]{%
	\settowidth{\siglawidth}{#1}\ignorespaces
	\ifthenelse{\lengthtest{\siglawidth > \siglamaxwidth}}% Se a nova sigla é maior,
		{\settowidth{\siglamaxwidth}{#1}}% seta o valor da maior com o tamanho da atual.
		{}\ignorespaces
\nomenclature{#1}{#2}%
{#2}}

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
\setlength{\nomitemsep}{-\parsep}% Tirando espaço extre entre as entradas na lista.
}

%% Define o comando que monta a lista de siglas
\newcommand{\listadesiglas}{
		 % Abrindo arquivo para leitura e verificando se ele existe:
		 \newread\instream
		 \immediate\openin\instream=\jobname.tmp
		 \ifeof\instream
		 	\message{\jobname.tmp nao existe ainda. Rode o latex novamente.} % Na primeira vez.
       \else
        % \immediate\read\instream to \auxcommand % O primeiro comando é o da lista de simbolos.
       	\immediate\read\instream to \auxcommand % O comando no arquivo temporario é salvo em \auxcommand.
       	\immediate\closein\instream % Fechando o arquivo.
       	\auxcommand % Executando o comando lido.
       \fi
%		 \addtolength{\siglamaxwidth}{1ex}
\printnomenclature[\the\siglamaxwidth]}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% LISTA DE QUADROS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\listadequadros}{%
  \ifthenelse{\boolean{@twocolumn}}%
    {\setboolean{ABNTrestorecol}{true}\onecolumn}%
    {\setboolean{ABNTrestorecol}{false}}%
%  \setchaptertype{listadequadros}
  \pretextualchapter{LISTA DE QUADROS}
  \@starttoc{qdr}%
  \ifthenelse{\boolean{ABNTrestorecol}}{\twocolumn}{}%
}%

\newcounter{quadro}
\setcounter{quadro}{0}
\newcommand{\ext@quadro}{qdr}
\newcommand{\quadro}[1]{%
	\captionsetup{type=quadro,name=Quadro}%FIXME só funciona em TEXLIVE
	\caption[#1]{#1}
}

\newcommand{\quadfillnum}[1]{%
  {\hspace{1em}\normalfont\dotfill}\nobreak
  \hb@xt@\@pnumwidth{\hfil\normalfont #1}{}\par}


\newcommand{\l@quadro}[2]
{
	\leftskip 3.4em
	\rightskip 1.8em
	\parfillskip -\rightskip
	\parindent 0em
	\@tempdima 2.8em
	--\advance\leftskip \@tempdima \null\nobreak\hskip -\leftskip
	{\MakeUppercase{Quadro} \normalfont #1}\nobreak \quadfillnum{#2}
}



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
	\addtocounter{page}{0}




% Observacoes:
% \@twosidetrue considera as paginas pares e impares.
% A numeracao sempre fica no canto superior externo da pagina.
% \@mparswitchtrue  inverte o tamanho das margens esquerda e
% direita para páginas pares, pois as margens devem ser simétricas para páginas opostas.
}

%Altera o tamanho da indentacao do paragrafo
\setlength{\parindent}{1.5cm} %


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% LEGENDAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\captionfonts}{\small}

%\long\def\@makecaption#1#2{
%	\vskip\abovecaptionskip
%	\sbox\@tempboxa{{\captionfonts \textbf{#1: #2}}}%
%	\ifdim \wd\@tempboxa >\hsize
%		{\captionfonts \textbf{#1: #2}\par}
%	\else
%		\hbox to\hsize{\hfil\box\@tempboxa\hfil}%
%	\fi
%	\vskip\belowcaptionskip
%}

\newcommand{\fonte}[1]
{
\begin{flushleft}
        \begin{spacing}{0.1}
			\par
		\end{spacing}
		\small{\textbf{Fonte: #1}}
	\end{flushleft}
}

\renewcommand{\fnum@figure}{\textbf{\figurename~\thefigure}}
\renewcommand{\fnum@table}{\textbf{\tablename~\thetable}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% REFERENCIAS
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\ABNTbibliographyname}{REFER\^ENCIAS}


%%% Outros Ajustes:
\renewenvironment{quote}{\list{}{\leftmargin=4cm\rightmargin=0cm\footnotesize\singlespace}\item[]}{\endlist}  %ajuste para citacao direta: para mais de 3 linhas, deve estar em um parágrafo próprio, com recuo de 4cm, espacamento simples e fonte tamanho 10

%% permite mais de três níveis no sumário
\setcounter{secnumdepth}{10}
\setcounter{tocdepth}{10}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\AtEndDocument{%
\typeout{+===================================================================+}
\typeout{|      Modelo de teses e dissertações da UTFPR.                }
\typeout{|      Alterado conforme regras de 2009.       }
\typeout{|      Desenvolvido por  UTFP-CP                               }
\typeout{|      Versão:                                             }
\typeout{|   $LastChangedDate: 2012-01-14 11:06:40 -0300 (sab, 14 jan 2012)$  }
\typeout{+===================================================================+}

% Salvando arquivo temporário com dados a serem utilizados na próxima "rodada"
% do latex.
\newwrite\outputstream
\immediate\openout\outputstream=\jobname.tmp
% Salvando comando contendo a largura do maior simbolo:
\immediate\write\outputstream{\string\setlength{\simbmaxwidth}{\the\simbmaxwidth}}
% Salvando comando contendo a largura da maior sigla:
\immediate\write\outputstream{\string\setlength{\siglamaxwidth}{\the\siglamaxwidth}}
% Fechando stream:
\immediate\closeout\outputstream
}%
