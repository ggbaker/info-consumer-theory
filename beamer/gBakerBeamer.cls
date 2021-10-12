\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{gBakerBeamer}[2016/10/02 by G. Baker]


\def\colortheme{light}
\DeclareOption{dark}{\def\colortheme{dark}}
\DeclareOption{square}{%
  \PassOptionsToPackage{%
    orientation=landscape,
    size=custom,
    width=10,height=8,scale=0.5,
  %  debug
  }{beamerposter}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions

\LoadClass[serif,12pt]{beamer}

%% Load beamerposter to allow setting of slide shape
\RequirePackage{beamerposter}

%% Set margins
\setbeamersize{text margin left=1em,
               text margin right=1em}

\RequirePackage{natbib}
\bibliographystyle{plainnat}


%\RequirePackage{mathtools}
\RequirePackage{amsfonts}
\RequirePackage{metalogo}
%\RequirePackage[bookmarks=true,hidelinks]{hyperref}

\RequirePackage{graphicx}

\linespread{1.05}

\usetheme{default}
\usecolortheme[\colortheme,accent=red]{solarized}
%\setbeamercolor{background canvas}{bg=white}
\usefonttheme{professionalfonts}

\RequirePackage[math-style=french,bold-style=upright,nabla=upright,partial=upright]{unicode-math}

\setmainfont[
  Mapping=tex-text,
  Ligatures=TeX,
  UprightFeatures={
    Numbers=Lowercase,
    SmallCapsFeatures={Letters=SmallCaps,LetterSpace=6},
  },
]{Libertinus Sans}


\setmathfont{Libertinus Math}
% \setmathfont{Asana Math}
%\setmathfont[range={\mathcal,\mathbfcal},StylisticSet=1]{XITS Math}
%\setmathfont[range=\mathup]{Linux Libertine O}
%\setmathfont[range=\mathit]{XITS Math}
%\setmathfont[range=\mathbfup]{Linux Libertine O Bold}
%\setmathfont[range={"222B-"2230}]

%\setverbatimfont{\ttfamily\scriptsize}
\setmonofont{Libertinus Mono}

\newcommand{\textverb}[1]{\texttt{\scriptsize #1}}


\newfontfamily\LibTitle[UprightFeatures={
  LetterSpace=10,
  WordSpace=1.3,
  Kerning=Off}
]{Libertinus Sans}


\beamertemplatenavigationsymbolsempty


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% TITLE STYLES
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setbeamerfont{title}{shape=\scshape}
\setbeamerfont{frametitle}{shape=\scshape}

\newtheorem{proposition}{Proposition}
\newtheorem{conjecture}{Conjecture}
