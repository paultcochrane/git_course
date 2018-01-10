% git_course.cls - Git course LaTeX Class File.

% Copyright (C) 2017 Paul Cochrane
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
\ProvidesClass{git_course}[2017/10/30 Git course LaTeX Class]

\LoadClass[t]{beamer}
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

\usepackage{multicol}
\usepackage{setspace}
\usepackage{csquotes}
\usepackage{listings}
\usepackage{graphicx}

\newcommand{\ttt}[1]{\texttt{#1}}
\newcommand{\tbf}[1]{\textbf{#1}}
\newcommand{\tit}[1]{\textit{#1}}
\newcommand{\code}[1]{\texttt{#1}}

% vim: expandtab shiftwidth=4
