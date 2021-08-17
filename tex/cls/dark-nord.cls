%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% dark-nord.cls                                                             %%
%% Copyright 2020 Ícaro Vidal Freire                                         %%
%% ------------------- Informações sobre a Classe ---------------------------%%
%%   Você pode modificar essa classe como quiser, desde que cite a fonte.    %%
%%   O objetivo dessa classe é usar uma configuração agradável de cores,     %%
%%   baseada na paleta de cores Nord (https://www.nordtheme.com/), para      %%
%%   leitura noturna.                                                        %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Informações Iniciais --------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{dark-nord}[2020/09/23 v1.6 
'Classe para leitura com cores Nord']
\DeclareOption*{\PassOptionsToCLass{\CurrentOptions}{article}}
\ProcessOptions\relax
\LoadClass[a5paper, 12pt]{article}%

% Pacotes já implementados ----------------------------------------------------

\RequirePackage{eulervm}
\RequirePackage{fontspec}
  \setmainfont{ArefRuqaa}
	[
   Path        = fonts/arefruqaa/,
	 Extension   = .ttf,
 	 UprightFont = *-Regular,
 	 BoldFont    = *-Bold
 ]
\RequirePackage{amsmath, amsthm, amssymb, amscd}
\RequirePackage{xcolor}
\RequirePackage{lipsum}
\RequirePackage{microtype}
\RequirePackage{titlesec}

% Configurações ---------------------------------------------------------------

% Definindo as cores Nord
\definecolor{NordBlack}{HTML}{3B4252}         % nord1
  \pagecolor{NordBlack}
\definecolor{NordWhite}{HTML}{D8DEE9}         % nord4
  \color{NordWhite}
\definecolor{NordGreen}{HTML}{A3BE8C}         % nord14
  \titleformat*{\section}{\normalfont\Large\bfseries\color{NordGreen}}
\definecolor{NordBlue}{HTML}{81A1C1}          % nord9
	\titleformat*{\subsection}{\normalfont\large\bfseries\color{NordBlue}}
	\titleformat*{\subsubsection}{\normalfont\normalsize\bfseries\color{NordBlue}}

% Redefinindo comandos 
\newcommand{\titulo}[1]{\title{\bfseries\textcolor{NordGreen}{#1}}}
\newcommand{\autor}[1]{\author{\textcolor{NordBlue}{#1}}}
\newcommand{\data}[1]{\date{\textcolor{NordBlue}{#1}}}
\newcommand{\negrito}[1]{\textbf{\textcolor{NordGreen!80}{#1}}}