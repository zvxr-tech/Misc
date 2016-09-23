%%
%% This is file `seminar.cls',
%% This tempate is used to satisfy the seminar report specifications
%% for the University of Calgary's course: CPSC 699 (F16).
%% [http://www.ucalgary.ca/aafshar/files/aafshar/seminar_report_template.pdf]
%% Based, partially, on Assignment Class (c) 2004 Madhusudan Singh
%% Copyright (C) 2016 Mike Clark
%% This material is subject to the LaTeX Project Public License. See http://www.ctan.org/tex-archive/help/Catalogue/licenses.lppl.html for the details of that license.

\ProvidesClass{seminar}[2016/09/22 Mike Clark, Copyright (C) 2016]
\NeedsTeXFormat{LaTeX2e}[1999/09/01]
\typeout{}
\typeout{ ==========> Seminar Report Class (seminar.cls) 2016 <============= }
\typeout{ Mike Clark (C) 2016 }
\typeout{}

\DeclareOption{twoside}{\PassOptionsToPackage{twoside}{article}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}\typeout{Delegating option ``\CurrentOption'' to the standard LaTeX2e article class.}}
\ProcessOptions
\LoadClass[12pt,a4paper]{article}

\pagestyle{empty}
\usepackage[margin=1.0in]{geometry}
\linespread{1.3}

\newcommand{\@student}{{\em [Your Name]}}
\newcommand{\@ucid}{{[12345678]}}
\newcommand{\@semester}{{[Fall 2016 or Winter 2017]}}
\newcommand{\@seminarNumber}{{\em [A number between 1 and 12]}}
\newcommand{\@seminarName}{{\em [Title of the seminar you attended]}}
\newcommand{\@seminarDate}{{\em [Date of the seminar you attended]}}
\newcommand{\@seminarPresenter}{{\em [Name of the persen presenting the seminar]}}
\newcommand{\@seminarLink}{{\em [The URL of the page describing the seminar]}}
\newcommand{\@seminarFaculty}{{\em [Name of the faculty that hosted the seminar: if
the Seminar is outside the faculty of science, check we the TA]}}
\newcommand{\@seminarSummary}{{\em [Write a paragraph (3 to 4 lines) about what
the seminar was about and what you thought about it]}}


\newcommand{\student}[1]{\renewcommand{\@student}{{#1}}}
\newcommand{\ucid}[1]{\renewcommand{\@ucid}{{#1}}}
\newcommand{\semester}[1]{\renewcommand{\@semester}{{#1}}}
\newcommand{\seminarNumber}[1]{\renewcommand{\@seminarNumber}{{#1}}}
\newcommand{\seminarName}[1]{\renewcommand{\@seminarName}{{#1}}}
\newcommand{\seminarDate}[1]{\renewcommand{\@seminarDate}{{#1}}}
\newcommand{\seminarPresenter}[1]{\renewcommand{\@seminarPresenter}{{#1}}}
\newcommand{\seminarLink}[1]{\renewcommand{\@seminarLink}{{#1}}}
\newcommand{\seminarFaculty}[1]{\renewcommand{\@seminarFaculty}{{#1}}}
\newcommand{\seminarSummary}[1]{\renewcommand{\@seminarSummary}{{#1}}}


\AtBeginDocument{%
\begin{center}
{\Large Seminar Report} \\
\@student \emph{(\@ucid)} \\
\ \\
%\textbf{Semester:}{\@courselabel: \@coursetitle} \\
\end{center}
\textbf{Semester: }\@semester \\
\textbf{Seminar Number: }\@seminarNumber \\
\textbf{Seminar Name: }\@seminarName \\
\textbf{Seminar Date: }\@seminarDate \\
\textbf{Seminar Presenter: }\@seminarPresenter \\
\textbf{Seminar Link: }\@seminarLink \\
\textbf{Seminar Faculty: }\@seminarFaculty \\
\textbf{Seminar Summary: }\@seminarSummary \\


}
\AtEndDocument{\vfill\noindent \sl{Submitted by \@student\ on \@date.}}
\endinput
%%
%% End of file `seminar.cls'.
