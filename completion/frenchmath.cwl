# frenchmath package
# Matthew Bertucci 2023/12/26 for v2.7

#include:mathrsfs
#include:amssymb
#include:amsopn
#include:xspace
#include:ibrackets
#include:decimalcomma

#keyvals:\usepackage/frenchmath#c
capsit
lgrmath
upgreek
Upgreek
noibrackets
#endkeyvals

#ifOption:lgrmath
#include:lgrmath
#endif

#ifOption:upgreek
#include:upgreek
\italpha#*m
\itbeta#*m
\itgamma#*m
\itdelta#*m
\itepsilon#*m
\itzeta#*m
\iteta#*m
\ittheta#*m
\itiota#*m
\itkappa#*m
\itlambda#*m
\itmu#*m
\itnu#*m
\itxi#*m
\itpi#*m
\itrho#*m
\itsigma#*m
\ittau#*m
\itupsilon#*m
\itphi#*m
\itchi#*m
\itpsi#*m
\itomega#*m
\itvarepsilon#*m
\itvartheta#*m
\itvarpi#*m
\itvarsigma#*m
\itvarphi#*m
#endif

#ifOption:Upgreek
#include:upgreek
\italpha#*m
\itbeta#*m
\itgamma#*m
\itdelta#*m
\itepsilon#*m
\itzeta#*m
\iteta#*m
\ittheta#*m
\itiota#*m
\itkappa#*m
\itlambda#*m
\itmu#*m
\itnu#*m
\itxi#*m
\itpi#*m
\itrho#*m
\itsigma#*m
\ittau#*m
\itupsilon#*m
\itphi#*m
\itchi#*m
\itpsi#*m
\itomega#*m
\itvarepsilon#*m
\itvartheta#*m
\itvarpi#*m
\itvarsigma#*m
\itvarphi#*m
#endif

\curs{text%plain}#m
\ssi
\Oij
\Oijk
\Ouv
\Oij*
\Oijk*
\Ouv*
\ijk

\infeg#m
\supeg#m
\vide#m
\paral#m
\paral*#m
\cmod#m
\pgcd#m
\ppcm#m
\card#m
\Card#m
\Ker#m
\Hom#m
\rg#m
\Vect#m
\ch#m
\sh#m
\th
\cosec#m
\cosech#m

\DeclareMathUp{cmd}#*d
\apply#S

\ifcapsit#S
\capsittrue#S
\capsitfalse#S
\iffrenchmathgreek#S
\frenchmathgreektrue#S
\frenchmathgreekfalse#S
\iflgrmath#S
\lgrmathtrue#S
\lgrmathfalse#S
\ifupgreek#S
\upgreektrue#S
\upgreekfalse#S
\ifUpgreek#S
\Upgreektrue#S
\Upgreekfalse#S
\ifnoibrackets#S
\noibracketstrue#S
\noibracketsfalse#S
