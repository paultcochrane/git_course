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
            
\usetheme{Boadilla}
\usecolortheme{beaver}

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
% \CourseDates[1]  -> #1 from when to when the course runs
\newcommand{\ttalert}[1]{\alert{\texttt{#1}}}

\newcommand{\T}{\textbackslash}

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

\hypersetup{colorlinks=true,linkcolor=dnblue, citecolor=black, urlcolor=dnblue}

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

\usepackage{textpos}
\usepackage{xspace}
\usepackage{tabto}

\newcommand{\linuxframe}[0]{%
    \AddToShipoutPictureFG*{
        \put(\LenToUnit{0.95\textwidth},\LenToUnit{0.95\textheight}){
            \includegraphics[width=10mm]{images/Tux.pdf}%
        }
    }
}
\newcommand{\windowsframe}[0]{%
    \AddToShipoutPictureFG*{
        \put(\LenToUnit{0.95\textwidth},\LenToUnit{0.95\textheight}){
            \includegraphics[width=10mm]{images/Windows-logo.png}%
        }
    }
}

% vertically aligns images to the top in tabular environments
% Solution found here:
% http://tex.stackexchange.com/questions/23521/tabular-vertical-alignment-to-top
\newcommand{\imagetop}[1]{\vtop{\null\hbox{#1}}}

\newcommand{\notepad}{\texttt{Notepad++}\xspace}

% vim: expandtab shiftwidth=4
