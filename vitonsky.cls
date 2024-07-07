% Forked from https://github.com/yegor256/blog/blob/ccc2fd62029b67e2b468b423269c3e2051e7cf89/_latex/yb.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vitonsky}[21/4/2021 0.1.0 Template for my documents]
\LoadClass[12pt]{article}
\RequirePackage{xcolor}
  \definecolor{accent}{HTML}{201D80}
  % \definecolor{accent}{RGB}{255, 221, 89}
  \definecolor{link}{HTML}{000000}
\RequirePackage{graphicx}
\RequirePackage{svg}
\RequirePackage{microtype}
\RequirePackage{libertine}
\RequirePackage[absolute]{textpos}
  \TPGrid{16}{16}
\RequirePackage[top=2\TPVertModule, bottom=2\TPVertModule, left=3\TPHorizModule, right=2\TPHorizModule]{geometry}
\RequirePackage{tikz}
\RequirePackage{fancyhdr}
  \pagestyle{fancy}
  \renewcommand{\headrulewidth}{0pt}
  \fancyhf{}
  \fancyfoot[C]{{
    \ifnum\value{page}=1\else
      \color{gray} page \thepage{} of \pageref{LastPage}
    \fi
  }}
  \fancyfoot[C]{
    \begin{textblock}{2}(0,0){
      \tikz[x=\TPHorizModule,y=\TPVertModule] \filldraw[fill=accent, draw=none] (0,0) rectangle (2,16);
    }\end{textblock}
    % \ifnum\value{page}=1
    %   \begin{textblock}{2}[0,1](0,16){
    %     \begin{center}
    %       \includesvg[width=0.5\textwidth]{icon-white.svg}
    %     \end{center}
    %   }\end{textblock}
    % \else\fi
  }

% Replace this with \RequirePackage{href-ul}
\RequirePackage[normalem]{ulem}
\RequirePackage[hidelinks]{hyperref}
  \makeatletter\begingroup
    \catcode`\$=6 %
    \catcode`\#=12 %
    \gdef\href@split$1#$2#$3\\$4{%
      \hyper@@link{$1}{$2}{\uline{$4}}%
      \endgroup
    }%
  \endgroup\makeatother

\newcommand\nospell[1]{#1}

\AtBeginDocument{%
  \setlength{\topskip}{0mm}
  \setlength{\parindent}{0pt}
  \setlength{\parskip}{5pt}
  \tolerance=2000
  \raggedbottom
  \large
}

\newcommand\vitonskyPrintPhoto{%
  \begin{textblock}{3}[1,0](14,1){
    \includegraphics[width=\textwidth]{./face.jpeg}
  }\end{textblock}
}

\endinput