\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gittalk}[2014/05/30 Simple presentation class by A. Gerdes]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax
\LoadClass[11pt,t,dvipsnames]{beamer}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Useful packages:
\RequirePackage[ngerman]{babel}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[babel]{csquotes}
\RequirePackage{textpos}
\RequirePackage{graphicx}
\RequirePackage{tabularx}
\RequirePackage{stackrel}
\RequirePackage{amssymb}
\RequirePackage{mathabx}
\RequirePackage{booktabs}
\RequirePackage{hyperref}
\RequirePackage{url}
\RequirePackage{listings}
\RequirePackage{tikz}
\RequirePackage{etoolbox}
\RequirePackage{eso-pic}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Color definitions:
\RequirePackage{color}
% We use Solarized color theme for listings:
% http://ethanschoonover.com/solarized
% http://chrisvoncsefalvay.com/code/solarized-in-latex
\definecolor{base03}{HTML}{002B36}
\definecolor{base02}{HTML}{073642}
\definecolor{base01}{HTML}{586E75}
\definecolor{base00}{HTML}{657B83}
\definecolor{base0}{HTML}{839496}
\definecolor{base1}{HTML}{93A1A1}
\definecolor{base2}{HTML}{EEE8D5}
\definecolor{base3}{HTML}{FDF6E3}
\definecolor{yellow}{HTML}{B58900}
\definecolor{orange}{HTML}{CB4B16}
\definecolor{red}{HTML}{DC322F}
\definecolor{magenta}{HTML}{D33682}
\definecolor{violet}{HTML}{6C71C4}
\definecolor{blue}{HTML}{268BD2}
\definecolor{cyan}{HTML}{2AA198}
\definecolor{green}{HTML}{859900}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set up hyperref:
\hypersetup{colorlinks=true, linkcolor=base03, citecolor=base02, urlcolor=green}

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Set up listings:
\lstset{
  basicstyle=\scriptsize\ttfamily,
  sensitive=true,
  backgroundcolor=\color{base3},
  keywordstyle=\bfseries\color{cyan},
  commentstyle=\color{base1},
  stringstyle=\color{blue},
  numberstyle=\color{violet},
  breaklines=true,
  tabsize=2
}
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define class option for bilingual talks
\newbool{english}
\DeclareOption{english}{\booltrue{english}}
\ProcessOptions\relax

% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Beamer template modifications:
\usetheme{Boadilla}
\usecolortheme{beaver}
\useinnertheme{rectangles}
\setbeamertemplate{navigation symbols}{}
%\setbeamercolor{colorbox}{fg=base03,bg=base3}
%\setbeamercolor{frametitle}{fg=base03}
%\setbeamercolor{title}{fg=base03}
\setbeamercolor{item}{fg=base03}
\setbeamercolor{subitem}{fg=gray}
\setbeamercolor{description item}{fg=base03}
\setbeamercolor{alerted text}{fg=red}


% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Handout for workshops
\RequirePackage{pgfpages}

\pgfpagesdeclarelayout{1 on 1 with notes}{%
    \edef\pgfpageoptionheight{\the\paperwidth}
    \edef\pgfpageoptionwidth{\the\paperheight}
    \edef\pgfpageoptionborder{0pt}
}
{%
\pgfpagesphysicalpageoptions{%
    logical pages=2,%
    physical height=\pgfpageoptionheight,%
    physical width=\pgfpageoptionwidth,%
    last logical shipout=1%
}
\pgfpageslogicalpageoptions{1}{%
    scale=1.4,
    center=\pgfpoint{.5\pgfphysicalwidth}{.73\pgfphysicalheight}%
}%
\pgfpageslogicalpageoptions{2}{%
    border shrink=\pgfpageoptionborder,%
    resized width=\pgfphysicalwidth,%
    resized height=\pgfphysicalheight,%
    center=\pgfpoint{.5\pgfphysicalwidth}{.25\pgfphysicalheight},%
    copy from=2
}%
\AtBeginDocument{%
    \newbox\notesbox
    \setbox\notesbox=\vbox{%
        \hsize=.85\paperwidth
        \vskip-1in\hskip-1in\vbox{%
            \vskip1cm
            Notes\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth\vskip5mm
            \hrule width\paperwidth
        }
    }
    \pgfpagesshipoutlogicalpage{2}\copy\notesbox
}
}
\DeclareOption{notes}{\pgfpagesuselayout{1 on 1 with notes}[a4paper,border shrink=15mm]}
\ProcessOptions\relax
