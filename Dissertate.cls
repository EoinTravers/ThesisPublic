% -------------------------------------------------------------------
%  @LaTeX-class-file{
%     filename        = "Dissertate.cls",
%     version         = "2.0",
%     date            = "25 March 2014",
%     codetable       = "ISO/ASCII",
%     keywords        = "LaTeX, Dissertate",
%     supported       = "Send email to suchow@post.harvard.edu.",
%     docstring       = "Class for a dissertation."
% --------------------------------------------------------------------

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Dissertate}[2014/03/25 v2.0 Dissertate Class]
\LoadClass[12pt, oneside, letterpaper, openany]{book}

% Text layout.
% \RequirePackage[width=5.75in, letterpaper]{geometry}
\RequirePackage[inner=4cm,outer=2.5cm,top=2.5cm,bottom=2.5cm]{geometry}
%% \RequirePackage[inner=4cm,outer=2.5cm,top=2.5cm,bottom=2.5cm,showframe]{geometry}
% \RequirePackage[inner=2cm,outer=1cm,top=1.5cm,bottom=2.5cm]{geometry} % Draft dimensions
\usepackage{ragged2e}
\RaggedRight
\RequirePackage{graphicx}
\usepackage{fixltx2e}
\parindent 12pt
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{verbatim}

% Fonts.
\RequirePackage{xcolor}
\usepackage{hyperref}
\RequirePackage{url}
%% \RequirePackage{breakurl}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{mathspec}
% \setmathsfont(Digits,Latin,Greek)[Numbers={Proportional}]{EB Garamond}
% \setmathrm{EB Garamond}
%% \usepackage{euler}
\widowpenalty=300
\clubpenalty=300
%% \setromanfont[Numbers=OldStyle, Ligatures={Common, TeX}, Scale=1.0]{EB Garamond}
%% \newfontfamily{\smallcaps}[RawFeature={+c2sc,+scmp}]{EB Garamond}

% \setsansfont[Scale=MatchLowercase, BoldFont={Lato Bold}]{Lato Regular}
% \setmonofont[Scale=MatchLowercase]{Source Code Pro}
\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
                textfont={sf,footnotesize,singlespacing},
                justification={justified,RaggedRight},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}
\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% Headings and headers.
\RequirePackage{fancyhdr}
\RequirePackage[tiny, md, sc]{titlesec}
\setlength{\headheight}{15pt}
\pagestyle{plain}
\RequirePackage{titling}

% Front matter.
\setcounter{tocdepth}{1}
\usepackage[titles]{tocloft}
%% \usepackage[titletoc,title]{appendix}
\usepackage[]{appendix}
\renewcommand{\cftsecleader}{\cftdotfill{\cftdotsep}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\renewcommand\listfigurename{List of Figures}
\renewcommand\listtablename{List of Tables}

% Endmatter
%% \renewcommand{\setthesection}{\arabic{chapter}.A\arabic{section}}

% References.
\renewcommand\bibname{References}
\RequirePackage[natbibapa]{apacite}
\citestyle{apacite}
\bibliographystyle{apacite}


%% Hide Retrieved from info if DOI available
% http://tex.stackexchange.com/questions/136903/apacite-how-to-suppress-url-if-doi-is-avalable
%% \newtoggle{bibdoi}
%% \newtoggle{biburl}
%% \makeatletter
%% \newsavebox{\bib@url}
%% \newsavebox{\bib@doi}

%% \undef{\APACrefURL}
%% \undef{\endAPACrefURL}
%% \undef{\APACrefDOI}
%% \undef{\endAPACrefDOI}

%% \newenvironment{APACrefURL}
%%   {\global\toggletrue{biburl}\lrbox\bib@url}
%%   {\endlrbox}

%% \newenvironment{APACrefDOI}
%%   {\global\toggletrue{bibdoi}\lrbox\bib@doi}
%%   {\endlrbox}

%% \newcommand{\printinfo}{
%%   \iftoggle{bibdoi}{\usebox{\bib@doi}}{\usebox{\bib@url}}
%%   \togglefalse{bibdoi}
%% }

%% \AtBeginEnvironment{thebibliography}{
%% \pretocmd{\PrintBackRefs}{%
%%   \iftoggle{bibdoi}
%%     {\iftoggle{biburl}{\unskip\unskip}{}Doi: \usebox{\bib@doi}}
%%     {\iftoggle{biburl}{Retrieved from \usebox{\bib@url}}}{}
%%   \togglefalse{bibdoi}\togglefalse{biburl}%
%% }{}{}}
%% \makeatother

%% \RequirePackage[palatino]{quotchap}
%% \renewcommand*{\chapterheadstartvskip}{\vspace*{-0.5\baselineskip}}
%% \renewcommand*{\chapterheadendvskip}{\vspace{1.3\baselineskip}}

%% http://zoonek.free.fr/LaTeX/LaTeX_samples_chapter/0.html
\titleformat{\chapter}[display]
  {\bfseries\Large}
  {\filright\MakeUppercase{\chaptertitlename} \Huge\thechapter}
  {1ex}
  {\titlerule\vspace{1ex}\filleft}
  [\vspace{1ex}\titlerule]

% An environment for paragraph-style section.
\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

\RequirePackage{longtable,booktabs,dcolumn}
\RequirePackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{P}{D{\%}{\%}{2}}

% Align reference numbers so that they do not cause an indent.
\newlength\mybibindent
\setlength\mybibindent{0pt}
\renewenvironment{thebibliography}[1]
    {\chapter*{\bibname}%
     \@mkboth{\MakeUppercase\bibname}{\MakeUppercase\bibname}%
     \list{\@biblabel{\@arabic\c@enumiv}}
          {\settowidth\labelwidth{\@biblabel{999}}
           \leftmargin\labelwidth
            \advance\leftmargin\dimexpr\labelsep+\mybibindent\relax\itemindent-\mybibindent
           \@openbib@code
           \usecounter{enumiv}
           \let\p@enumiv\@empty
           \renewcommand\theenumiv{\@arabic\c@enumiv}}
     \sloppy
     \clubpenalty4000
     \@clubpenalty \clubpenalty
     \widowpenalty4000%
     \sfcode`\.\@m}
    {\def\@noitemerr
      {\@latex@warning{Empty `thebibliography' environment}}
     \endlist}

% Some definitions.
\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}
% School name and location
\university{Queen's University Belfast}
\universitycity{Belfast}
\universitystate{United Kingdom}

% School color found from university's graphic identity site:
% http://www.nyu.edu/employees/resources-and-services/media-and-communications/styleguide.html
\definecolor{SchoolColor}{rgb}{0.7686, 0.0705, 0.188} % QUB Red
\definecolor{chaptergrey}{rgb}{0.7686, 0.0705, 0.188} % QUB Red
%% \definecolor{chaptergrey}{rgb}{0.2600, 0.0200, 0.4600} % dialed back a little
\definecolor{midgrey}{rgb}{0.4, 0.4, 0.4}

\hypersetup{
  colorlinks,
  citecolor=black,
  filecolor=black,
  linkcolor=black,
  urlcolor=black,
}


\newcommand{\hl}[1]{
  \textcolor{red}{#1}
}


% Formatting guidelines found in:
% http://gsas.nyu.edu/docs/IO/4474/formattingguide.pdf
\renewcommand{\frontmatter}{
	\pagenumbering{roman}
	\input{frontmatter/personalize}
	\maketitle
	\copyrightpage
	\frontispiece
	%% \dedicationpage
	\acknowledgments
	%% \preface
	\abstractpage

	\tableofcontents

	% figure listing - required if you have any figures
	\listoffigures
	\phantomsection
	\addcontentsline{toc}{chapter}{List of Figures}

	% table listing - required if you have any tables
	\listoftables
	\phantomsection
	\addcontentsline{toc}{chapter}{List of Tables}

	% appendix listing - required only if you have two or more appendices
	\newpage
	%% \thispagestyle{empty}
	%% \phantomsection
	%% \addcontentsline{toc}{chapter}{List of appendices}
	%% \chapter*{List of appendices}
	%% \contentsline {chapter}{Appendix A}{\pageref{AppendixA}}{}

	\newpage
	\setcounter{page}{1}
	\pagenumbering{arabic}
}


%% Author’s full names
%% Degrees held by the author
%% Title of Thesis (as approved by the School Postgraduate Research Committee)
%% Degree for which it is offered
%% School to which it pertains
%% Date
\renewcommand{\maketitle}{
	\thispagestyle{empty}
	\vspace*{\fill}
	\vspace{100pt}
	\begin{center}
	\Huge \textcolor{black}{\thetitle} \normalsize \\
	\vspace{15pt}
	by \\
	\vspace{5pt}
    Eoin Travers, BSc\\
	%% \theauthor\\
    \vspace{15pt}
    Supervisors: Dr Aidan Feeney \& Dr Jonathan Rolison\\
	\vspace{135pt}
	\textsc{a dissertation submitted in partial fulfillment\\
	  of the requirements for the degree of \\
	  \vspace{8pt}
	  Doctor of Philosophy (PhD) \\
	  School of Psychology  \\
	  \@university \\
	  \vspace{10pt}
	  \@degreemonth, \@degreeyear}
	\end{center}
	\vspace*{\fill}
}

\newcommand{\copyrightpage}{
	\newpage
	\thispagestyle{empty}
	\vspace*{25pt}
	\begin{center}
	\scshape \noindent \small \copyright \  \small  \theauthor \\
	all rights reserved, \@degreeyear
	\end{center}
	\newpage
	\rm
}

\newcommand{\frontispiece}{
	\newpage
	\thispagestyle{empty}
	\vspace*{\fill}
	\begin{center}
  \includegraphics[width=45pt]{packages/images/NYUlogo.eps}
	\end{center}
	\vspace*{\fill}
}

\newcommand{\dedicationpage}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Dedication}
	\newpage
	\setcounter{page}{4}
	\vspace*{\fill}
	\scshape \noindent \input{frontmatter/dedication}
	\vspace*{\fill}
	\newpage
	\rm
}

\newcommand{\acknowledgments}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Acknowledgments}
	\chapter*{Acknowledgments}
	\noindent
	\input{frontmatter/thanks}
	\vspace*{\fill} \newpage
}

\newcommand{\preface}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Preface}
	\chapter*{Preface}
	\input{frontmatter/preface}
}

\newcommand{\abstractpage}{
	\phantomsection
	\addcontentsline{toc}{chapter}{Abstract}
	\chapter*{Abstract}
	\input{frontmatter/abstract}
}

%% \newcommand{\citecolour}{black}
%% \newcommand{\citecolour}{SchoolColour}

%% \newcommand{\citegap}[3][]{
%%   \textcolor{\citecolour}{%
%%     \citeauthor{#2}{#3}} (\textcolor{\citecolour}{\citeyear{#2}}#1)%
%% }
%% \newcommand{\citealgap}[3][]{%
%%   \textcolor{\citecolour}{%
%%     \citeauthor{#2}{#3}, \citeyear{#2}}#1%
%% }
\newcommand{\citegap}[3][]{
  \citeauthor{#2}{#3} (\citeyear{#2}#1)%
}
\newcommand{\citealgap}[3][]{%
  \citeauthor{#2}{#3}, \citeyear{#2}#1%
}


\newcommand{\aside}[1]{
  \textcolor{red}{[[#1]]}
  %% \textcolor{blue}{[[#1]]}
}
\newlength{\figurewidth}\setlength{\figurewidth}{.9\textwidth}

\newcommand\amp{\&}

\newcommand{\picwidth}{0.2\textwidth}
\newcommand{\smallpic}[1]{
  \includegraphics[width=\picwidth]{#1}
}
\newcommand{\pic}[1]{
  \includegraphics[width=0.2\textwidth]{#1}
}

\newcommand{\sidewayssmallpic}[1]{
  \includegraphics[width=.15\textwidth]{#1}
}
\newcommand{\onefifthpic}[1]{
  \includegraphics[width=.18\textwidth]{#1}
}



\RequirePackage{floatrow}
\newfloatcommand{capbtabbox}{table}[][\FBwidth]

%% \RequirePackage{lscape}


%% \RequirePackage{tocloft}

%% \newcommand{\listasidename}{List of Comments}
%% \newlistof{aside}{aside}{\listasidename}

%% \let\oldaside\aside
%% \renewcommand{\aside}[1]{%
%%   \refstepcounter{aside}
%%   \oldaside{#1}%
%%   \addcontentsline{aside}{aside}{\protect\numberline{\thechapter.\theaside}#1}\par}

\floatsetup[table]{capposition=top}
\usepackage{rotating}
\usepackage{multirow}
\renewcommand{\thefootnote}{\arabic{footnote}} 


\RequirePackage{tikz}
\usetikzlibrary{shapes,shapes.geometric,fit}
\newcommand*{\circled}[2][red]{
  %% \tikz[baseline=(char.base),solid]{
  \tikz[baseline=(char.base),dashed]{
    \node[shape=rounded rectangle,inner sep=3pt,
      draw=#1,
    ] (char) {#2};}
}
\newcommand{\markcells}[3][green]{
  \tikz[baseline=(char.mid)]{\node[shape=ellipse,overlay,draw,#1]{\phantom{\rule{#2}{#3}}};}%
}

\usetikzlibrary{fit,shapes.misc}
\newcommand\marktopleft[1]{%
  \tikz[overlay,remember picture] 
  \node (marker-#1-a) at (0,1.5ex) {};%
}
\newcommand\markbottomright[2][red]{%
  \tikz[overlay,remember picture] 
  \node (marker-#2-b) at (0,0) {};%
  \tikz[overlay,remember picture,thick,dashed,inner sep=3pt]
  \node[draw=#1,rounded rectangle,fit=(marker-#2-a.center) (marker-#2-b.center)] {};%
}

%% For keeping floats in place in Appendices
\RequirePackage{placeins}

\newcommand\tildetext{\char`\~}

\newcommand\SmallMatrix[1]{{%
  \tiny\arraycolsep=0.3\arraycolsep\ensuremath{\begin{bmatrix}#1\end{bmatrix}}}}



\renewcommand\cftchapfont{\small}
\renewcommand\cftsecfont{\small}

\renewcommand\cftchappagefont{\small}
\renewcommand\cftsecpagefont{\small}

\interfootnotelinepenalty=10000
