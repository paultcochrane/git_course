% vcs_beamer.cls - Version control system course LaTeX Class File.

% Copyright (C) 2013 Paul Cochrane
% Hacked from the LaTeX from Mark Heisterkamp, RRZN
% 
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; either version 2
% of the License, or (at your option) any later version.
%   
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%    
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307,
% USA.

\pdfminorversion=4
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vcs_beamer}[2013/09/03 Version control system course LaTeX Class]

\LoadClass[11pt,t]{beamer}

\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage[british]{babel}
\usepackage{csquotes}
\usepackage{lmodern,
            url,
            multicol,
            moreverb,
            eso-pic,
            marvosym,
            pifont,
            calc,
            textcomp}
            
\useinnertheme{rectangles}

% font changes
\def\UrlFont{\color{dnblue}\tt} % URL-Font auf Typewriter
\usefonttheme[onlymath]{serif}   % Mathetext in Serifen

% length changes
\setlength{\parindent}{0pt}   % no paragraph indentation
\setlength{\parskip}%
  {1.2ex plus .5ex minus.5ex} % space between paragraphs
\setlength{\unitlength}{1mm}  % default unit length 1mm

% \ttalert[1]      -> highlight #1 in typewriter text
% \T               -> textbackslash
% \Email[1]        -> #1 is the email address
% \CourseDates[1]  -> #1 from when to when the course runs
% \beamertitlepage -> make the title page at this place
\newcommand{\ttalert}[1]{\alert{\texttt{#1}}}

\newcommand{\T}{\textbackslash}

\renewcommand\insertshorttitle[1][]{%
  \beamer@setupshort{#1}%
  \let\thanks=\@gobble%
  \ifnum\c@page=1%
    \hyperlinkpresentationend{\beamer@insertshort{\beamer@shorttitle}}%
  \else%
    \hyperlinkpresentationstart{\beamer@insertshort{\beamer@shorttitle}}%
  \fi}

\renewcommand*{\Email}[1]{\def\myEmail{#1}}

\newcommand*{\CourseDates}[1][\mbox{}]{\def\myCourseDates{#1}}

\newcommand{\beamertitlepage}{%
\begin{frame}
\AddToShipoutPicture*{%
  \unitlength 1mm
  \begin{picture}(128,96)
    \fboxsep 0pt
    % background image
    %\put(0,5){\pgfuseimage{CPU}}
  \end{picture}}
  \centering
  \bfseries
  \textcolor{dnblue}{\Huge\inserttitle}
  \color{gray}
  \vskip 5mm
  \insertauthor\par
  \myEmail
  \vskip 5mm
  \myCourseDates\par
\end{frame}}

% colours
\definecolor{uniblue}{cmyk}{0.80,0.55,0,0}
\definecolor{linkcolor}{cmyk}{0.80,0.55,0,0}
\definecolor{urlcolor}{cmyk}{0.80,0.55,0,0}
\definecolor{citecolor}{cmyk}{0.80,0.55,0,0}
\definecolor{mygray}{gray}{.9}
\definecolor{lightgreen}{rgb}{.467,.621,.176}
\definecolor{yellow}{rgb}{1,1,0}
\definecolor{darkyellow}{rgb}{.6,.6,0}
\definecolor{lightgrey}{rgb}{0.937,0.937,0.937}
\definecolor{dnorange}{HTML}{FF6600}
\definecolor{dngrey}{HTML}{999999}
\definecolor{dnolive}{HTML}{CBAF41}
\definecolor{dnblue}{HTML}{5599FF}
\definecolor{dndarkorange}{HTML}{C87137}
\definecolor{dnred}{HTML}{D35F5F}
\definecolor{dnpurple}{HTML}{BC5FD3}
\definecolor{dngreen}{HTML}{37C871}

% image and logo definitions
\pgfdeclareimage[height=5mm]{LEFT_LOGO}{logo_left}
\pgfdeclareimage[height=5mm]{RIGHT_LOGO}{logo_right}

% Changes to beamer template
% header:
\setbeamertemplate{headline}{%
\vspace{3mm}\hspace{3mm}%
%\pgfuseimage{LEFT_LOGO}\hfill\pgfuseimage{RIGHT_LOGO}%
\hspace{3mm}\mbox{}%
}
% footer:
\setbeamertemplate{footline}{%
\begin{beamercolorbox}[ht=1mm]{colorbox}
\color{dnorange}%
\hspace{107.5mm}\rule{17.5mm}{1mm}
\end{beamercolorbox}
\begin{beamercolorbox}[leftskip=3mm,rightskip=3mm,ht=4mm]{colorbox}
\textbf{\insertshorttitle{}} \qquad \insertauthor \qquad  | \quad \insertdate \hfill{} \insertframenumber%
\vspace{1.5mm}\vbox{}%
\end{beamercolorbox}
}
% slide title
\setbeamertemplate{frametitle}{%
  \begin{beamercolorbox}%
        [wd=\paperwidth,leftskip=5mm,%
         rightskip=5mm,vmode]{frametitle}%
     \usebeamerfont*{frametitle}%
     \textbf{\insertframetitle}%
   \end{beamercolorbox}}

\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{enumerate items}[square]
\setbeamertemplate{itemize items}{%
  \scriptsize\vrule width2.25ex height1.85ex depth.4ex}
\setbeamertemplate{itemize subitem}{%
  \scriptsize\fboxsep0pt\fboxrule1pt\fbox{%
  \color{white}\raisebox{-.4pt}{\rule{2.25ex-2pt}{2.25ex-2pt}}}}

% beamer colours
\setbeamercolor{colorbox}{fg=dnblue,bg=lightgrey}
\setbeamercolor{frametitle}{fg=dnblue}
\setbeamercolor{title}{fg=dnblue}
\setbeamercolor{item}{fg=dnorange}
\setbeamercolor{subitem}{fg=dnorange}
\setbeamercolor{description item}{fg=dnblue}
\setbeamercolor{background canvas}{bg=}
\setbeamercolor{alerted text}{fg=dnblue}
\setbeamercolor{block body}{bg=lightgrey}
\setbeamercolor{block title}{bg=dngrey}

\hypersetup{colorlinks=true,linkcolor=dnblue, citecolor=black, urlcolor=dnblue}

% sizes in beamer
\setbeamersize{description width=5mm}
\setbeamersize{text margin left=5mm}
\setbeamersize{text margin right=5mm}

% various extensions
\usepackage{verbatim}
\usepackage{fancyvrb}
\usepackage{graphicx}
\usepackage{eurosym}
\usepackage{booktabs}
\usepackage{listings}
\usepackage{tabularx}
\usepackage{setspace}
\usepackage{tikz}

\lstset{backgroundcolor=\color{lightgrey},
        basicstyle=\scriptsize\ttfamily\color{black},
        commentstyle=\scriptsize\ttfamily\color{blue},
        stringstyle=\scriptsize\ttfamily\color{red},
        keywordstyle=\scriptsize\ttfamily\color{ForestGreen},
        showstringspaces=false,
	%breaklines=true,
        frame=single,
        framerule=0pt,
        xrightmargin=\fboxsep,
        xleftmargin=\fboxsep,
        basewidth=.5em,
        extendedchars=true} % standard values for source code

\newcommand{\ttt}[1]{\texttt{#1}}
\newcommand{\tbf}[1]{\textbf{#1}}
\newcommand{\tit}[1]{\textit{#1}}

\usetikzlibrary{calc}
\usetikzlibrary{patterns}
\usetikzlibrary{arrows}
\usetikzlibrary{decorations.pathmorphing}
\usetikzlibrary{backgrounds}
\usetikzlibrary{fit}
\usepackage{pgflibraryshapes}
\usepackage{pgfplots}
\usepgfplotslibrary{dateplot}
\pgfplotsset{compat=1.3}

% vim: expandtab shiftwidth=4
