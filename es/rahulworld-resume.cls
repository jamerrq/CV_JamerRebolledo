% Intro Options
\ProvidesClass{rahulworld-resume}[2014/04/30 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
    \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.7cm]{geometry}
\usepackage[usenames,dvipsnames]{xcolor}
\usepackage[hidelinks, colorlinks=true, urlcolor=blue]{hyperref}
\usepackage{titlesec}
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{babel}
\usepackage[UKenglish]{isodate}
\usepackage{fontspec,xltxtra,xunicode}
\usepackage{blindtext}
\usepackage{lipsum}
\usepackage{amsmath}


% Color definitions
\definecolor{date}{HTML}{666666}
\definecolor{primary}{HTML}{000002}
\definecolor{headings}{HTML}{0000ff}
\definecolor{subheadings}{HTML}{333333}
\definecolor{smcolor}{HTML}{124076}

% Set main fonts
\defaultfontfeatures{Mapping=tex-text}
\setmainfont[Color=primary, Path = fonts/FiraSans/]{FiraSans-Regular}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/FiraSans/]{FiraSans-Regular}
\newcommand{\custombold}[1]{\color{subheadings}\fontspec[Path = fonts/FiraSans/]{FiraSans-Bold}\selectfont #1 \normalfont}
\newcommand{\customit}[1]
{\color{subheadings}\fontspec[Path = fonts/FiraSans/]{FiraSans-Italic}\selectfont #1 \normalfont}


% Header command
% \newcommand{\headername}{\color{headings}
% \fontspec[Path = fonts/calibri/]{Calibri}\fontsize{24pt}{32pt}\selectfont\raggedright}{} {0em}{}
\newcommand{\headername}[1]{\color{subheadings}
    \fontspec[Path = fonts/FiraSans/]{FiraSans-Semibold}\fontsize{24pt}{12pt}\selectfont\vspace{10pt}\raggedright {#1} \normalfont}


\titlespacing{\section}{0pt}{0pt}{0pt}

% Headings command
\titleformat{\section}{\color{headings}
    \fontspec[Path = fonts/FiraSans/]{FiraSans-Semibold}\fontsize{16pt}{24pt}\selectfont\raggedright}{} {0em}{}

\newcommand{\SectionHead}[1]{\smash{\begin{tabular}{l} \hline #1 \\ \hline \end{tabular}\hspace*{-\tabcolsep}}}

% Subheadings command
\titleformat{\subsection}{\color{subheadings}
    \fontspec[Path = fonts/FiraSans/]{FiraSans-Semibold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}
\titlespacing{\subsection}{0pt}{\parskip}{-\parskip}
\titlespacing{\subsubsection}{0pt}{\parskip}{-\parskip}
\newcommand{\runsubsection}[1]{\color{subheadings}
    \fontspec[Path = fonts/FiraSans/]{FiraSans-Regular}\fontsize{12pt}{12pt}\selectfont\bfseries {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{\color{subheadings}\raggedright\hspace*{0pt}\hfill\vspace{3pt}\fontspec[Path = fonts/FiraSans/]{FiraSans-Regular}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Item Description command
\newcommand{\itemdes}[1]{\color{subheadings}\raggedright\vspace{2pt}\fontspec[Path = fonts/FiraSans/]{FiraSans-SemiBold}\fontsize{11pt}{13pt}\selectfont {#1} \normalfont}

% Descriptors command
\newcommand{\descriptright}[1]{\color{subheadings}\raggedright\hspace*{2pt}\hfill\fontspec[Path = fonts/FiraSans/]{FiraSans-Regular}\fontsize{11pt}{12pt}\selectfont {#1 \\} \normalfont}

% Descriptors datecolor
\newcommand{\datecolor}[1]{\color{smcolor}\raggedright\scshape\fontspec[Path = fonts/FiraSans/]{FiraSans-Semibold}\fontsize{11pt}{13pt}\selectfont {#1 } \normalfont}

% Section seperators command
\newcommand{\sectionsep}[0]{\vspace{3pt}}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{\vspace{-\topsep}\begin{itemize}\itemsep0.5pt
              \parskip0pt \parsep0pt}{\end{itemize}\vspace{-\topsep}}
