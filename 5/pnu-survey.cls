\ProvidesClass{pnu-survey}[2022/10/21 PNU-Survey v1]

% load default class and set default paper size and font size
\DeclareOption{onecolumn}{\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[10pt,a4paper,twocolumn]{article}

% set default parpar margin
\usepackage[top=3cm, left=1cm, right=1cm, bottom=2cm]{geometry}

% set default font and hangul packages
\usepackage{times}
\usepackage{dhucs-cmap}
\usepackage[hangul,nonfrench,finemath]{kotex}

% packages for spacing
\usepackage[hangul]{dhucs-setspace}

% set line spacing
\SetHangulspace{1.3}{1.1}

\usepackage{indentfirst}
\setlength{\parindent}{1em}
\setlength{\parskip}{0pt}

% package for footnotes
\usepackage[parenthesis,hang]{dhucsfn}

% set section presentation
% 1, 1.1, 1.1.1, 1.1.1.1 형식으로 연결되도록 함.
\usepackage[ensec]{dhucs-sectsty}
\sectionfont{\fontsize{12}{12}\bfseries\selectfont}
\subsectionfont{\fontsize{10}{10}\bfseries\selectfont}
\subsubsectionfont{\fontsize{10}{10}\bfseries\selectfont}

% do not generate page number
\pagestyle{plain}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% variable settings 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\abstract#1{\gdef\@abstract{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 제목
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{
	\twocolumn[
    	\begin{center}
    		{\fontsize{16}{16}\selectfont {\bfseries {\@title}} \par}
     		\vspace{5mm}
    		{\fontsize{10}{10}\selectfont {\bfseries {\@author}} \par}
     		\vspace{5mm}
    		{\bfseries 요 \ \ 약 \par}
     		\vspace{2mm}
    		\parbox{15.8cm}{\fontsize{9}{9}\selectfont {\quad\@abstract} \par}
    	\end{center}
    	\vspace{5mm}
	]
}

% format with dot '.' after the section number and before the section title
\makeatletter
\def\@seccntformat#1{
	\@ifundefined{#1@cntformat}%
	{\csname the#1\endcsname\quad}% default
	{\csname #1@cntformat\endcsname}% individual control
}
\def\section@cntformat{\thesection.\quad}
\makeatother