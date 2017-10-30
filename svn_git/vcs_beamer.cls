% vcs_beamer.cls - Version control system course LaTeX Class File.

% Copyright (C) 2013-2017 Paul Cochrane
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

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vcs_beamer}[2013/09/03 Version control system course LaTeX Class]

\LoadClass{beamer}
\usetheme{metropolis}
\setsansfont[
        Extension      = .otf,
        UprightFont    = *-Light,
        ItalicFont     = *-LightItalic,
        BoldFont       = *-Regular,
        BoldItalicFont = *-RegularItalic
        ]{FiraSans}
\setmonofont[
        Extension   = .otf,
        UprightFont = *-Regular,
        BoldFont    = *-Bold
        ]{FiraMono}

% for use in handout mode
% \usepackage{pgfpages}
% \pgfpagesuselayout{2 on 1}[a4paper,border shrink=5mm]

\usepackage{multicol}
\usepackage{setspace}
\usepackage{listings}
\usepackage{graphicx}
\usepackage{eso-pic}
\usepackage{csquotes}
\usepackage{fancyvrb}
\usepackage{xspace}
\usepackage{tabularx}
\usepackage{textpos}
\usepackage{tabto}

\newcommand{\ttalert}[1]{\alert{\texttt{#1}}}
\newcommand{\ttt}[1]{\texttt{#1}}
\newcommand{\tbf}[1]{\textbf{#1}}
\newcommand{\tit}[1]{\textit{#1}}
\newcommand{\windowsframe}[0]{%
    \AddToShipoutPictureFG*{%
        \put(\LenToUnit{0.95\textwidth},\LenToUnit{0.95\textheight}){%
            \includegraphics[width=10mm]{images/Windows-logo.png}%
        }
    }
}
\newcommand{\linuxframe}[0]{%
    \AddToShipoutPictureFG*{%
        \put(\LenToUnit{0.95\textwidth},\LenToUnit{0.95\textheight}){%
            \includegraphics[width=10mm]{images/Tux.png}%
        }
    }
}
\newcommand{\T}{\textbackslash}
\newcommand{\notepad}{\texttt{Notepad++}\xspace}

% vim: expandtab shiftwidth=4
