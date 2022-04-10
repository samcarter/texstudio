# minimalist-plain package
# Matthew Bertucci 2022/04/06 for 2022/04/06 release

#include:l3keys2e
#include:anyfontsize
#include:tikz
# loads calc and shadings tikzlibraries
#include:tikzpagenodes
#include:geometry
#include:fancyhdr
#include:extramarks
#include:linenoamsmath
#include:titlesec
#include:ulem
#include:titletoc
#include:enumitem
#include:imakeidx
#include:silence
#include:projlib-draft
#include:mathtools
#include:amsthm
#include:bookmark
#include:hyperref
#include:projlib-theorem
#include:projlib-author
# loads amsfashion options of projlib-author
#include:projlib-titlepage
#include:tcolorbox
# loads many option of tcolorbox
#include:amsmath
#include:pdfcol

\LocallyStopLineNumbers
\ResumeLineNumbers
\begin{keyword}
\end{keyword}
\parttext{text}
\begin{emphasis}
\end{emphasis}

\ifLNturnsON#*
\keywordname#*
\LNturnsONfalse#*
\LNturnsONtrue#*
\partstring#*
\qedsymbolOriginal#S
\IndexDotfill#*
\IndexHeading{text}#*

# from amsfashion option of projlib-author
#include:projlib-language
#include:scontents
\keywords{keywords%text}
\dedicatory{text}
\subjclass{classification}
\subjclass[year]{classification}