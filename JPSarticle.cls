\RequirePackage[l2tabu, orthodox]{nag}
\LoadClass{article}

\setlength{\parskip}{1pt}

\makeatletter
\def\@xfootnote[#1]{%
  \protected@xdef\@thefnmark{#1}%
  \@footnotemark\@footnotetext}
\makeatother

\usepackage{amsmath}
\usepackage{gensymb}
\usepackage{url}
\makeatletter
\let\UrlSpecialsOld\UrlSpecials
\def\UrlSpecials{\UrlSpecialsOld\do\/{\Url@slash}\do\_{\Url@underscore}}%
\def\Url@slash{\@ifnextchar/{\kern-.11em\mathchar47\kern-.2em}%
    {\kern-.0em\mathchar47\kern-.08em\penalty\UrlBigBreakPenalty}}
\def\Url@underscore{\nfss@text{\leavevmode \kern.06em\vbox{\hrule\@width.3em}}}
\makeatother

\urlstyle{same}

\usepackage[spanish, american, headfoot=american]{babel}
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
\usepackage{libertine}
\usepackage{tipa}
\usepackage{microtype}
\usepackage{ellipsis}
\usepackage[maxlevel=3]{csquotes}
\usepackage{./Data/legendhyp}
\usepackage{graphicx}
\usepackage[font=it]{caption}
\graphicspath{{./Images/}}

\usepackage{cleveref}

\usepackage
[
notes,
backend=biber,
isbn=false
]
{biblatex-chicago}

% Double spacing

%\linespread{2}

% ------
% Titling (section/subsection)
\usepackage{titlesec}
%%\renewcommand\thesection{\Roman{section}}
%%\titleformat{\section}[block]{\large\scshape\centering}{\thesection.}{1em}{}
\titleformat{\section}{\Large}{\makebox[0cm][r]{\thesection\hspace{1em}}}{0em}{\scshape\lowercase}[{\titlerule[0.8pt]}]
\titlespacing*{\section}{0pt}{\baselineskip}{\baselineskip}
\titleformat{\subsection}{\large}{\thesubsection}{.6em}{\itshape}
\titlespacing*{\subsection}{0pt}{\baselineskip}{\baselineskip}

% ------
% Header/footer
\usepackage{fancyhdr}
	\pagestyle{fancy}
	\fancyhead{}
	\fancyfoot{}
	\fancyhead[C]{Master's Thesis \hspace{0.3cm} $\bullet$ \hspace{0.3cm} December 2009 \hspace{0.3cm} $\bullet$ \hspace{0.3cm} UC Berkeley}
	\fancyfoot[R]{\thepage}

\renewenvironment{quote}
  {\begin{trivlist} \setlength\leftskip{.75cm} \setlength\rightskip{.5cm}
   \item\relax}
  {\end{trivlist}}

