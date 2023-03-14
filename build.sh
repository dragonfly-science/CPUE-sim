#!/bin/bash

set -exu
quarto render CPUE_sim.qmd ||true

if test -n "$(find . -maxdepth 1 -name '*.Rdata' -print -quit)"
then
    cp *.Rdata ${OUTPUTDIR}/.
fi

if test -n "$(find . -maxdepth 1 -name '*.rda' -print -quit)"
then
    cp *.rda ${OUTPUTDIR}/.
fi

exit $?
if test -n "$(find . -maxdepth 1 -name '*.csv' -print -quit)"
then
    cp *.csv ${OUTPUTDIR}/.
fi
