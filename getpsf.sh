##################################
# Author : cndaqiang             #
# Update : 2019-04-11            #
# Build  : 2019-04-11            #
# What   : 从SIESTA官网下载赝势psf  #
#################################

WORKDIR=$(pwd)
Species=( H       He      Li      Be      B       C       N       O       F       Ne      Na      Mg      Al      Si
P       S       Cl      Ar      K       Ca      Sc      Ti      V       Cr      Mn      Fe      Co      Ni
Cu      Zn      Ga      Ge      As      Se      Br      Kr      Rb      Sr      Y       Zr      Nb      Mo
Tc      Ru      Rh      Pd      Ag      Cd      In      Sn      Sb      Te      I       Xe      Cs      Ba
La      Ce      Pr      Nd      Pm      Sm      Eu      Gd      Tb      Dy      Ho      Er      Tm      Yb
Lu      Hf      Ta      W       Re      Os      Ir      Pt      Au      Hg      Tl      Pb      Bi      Po
At      Rn      Fr      Ra      Ac      Th      Pa      U       Np      Pu      Am      Cm      Bk      Cf
Es      Fm      Md      No      Lr)
#弱网址失效, google直接搜即可,如https://departments.icmab.es/leem/SIESTA_MATERIAL/Databases/Pseudopotentials/periodictable-intro.html
URLGGA=https://departments.icmab.es/leem/siesta/Databases/Pseudopotentials/Pseudos_GGA_Abinit
downdirGGA=$WORKDIR/GGA-psf-$(date +%Y%m%d)
mkdir $downdirGGA
for i in ${Species[@]}
do
cd $downdirGGA
wget $URLGGA/${i}_html/${i}.psf
sleep 2
done

URLLDA=https://departments.icmab.es/leem/siesta/Databases/Pseudopotentials/Pseudos_LDA_Abinit
downdirLDA=$WORKDIR/LDA-psf-$(date +%Y%m%d)
mkdir $downdirLDA
for i in ${Species[@]}
do
cd $downdirLDA
wget $URLLDA/${i}_html/${i}.psf
sleep 2
done
