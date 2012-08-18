#!/bin/bash

SHADERSDIR=/usr/share/bsnes/shaders
PROFILEDIR=/usr/share/bsnes/profile
CHEATSFILE=/usr/share/bsnes/cheats.xml

[ ! -e ~/.config/bsnes ] && mkdir -p ~/.config/bsnes

[ ! -e ~/.config/bsnes/shaders ] && cp -r $SHADERSDIR ~/.config/bsnes
[ ! -e ~/.config/bsnes/cheats.xml ] && cp $CHEATSFILE ~/.config/bsnes

for dir in ${PROFILEDIR}/*
do
	[ ! -e ~/.config/bsnes/"${dir##*/}" ] && cp -r "${dir}" ~/.config/bsnes
done

exec /usr/lib/bsnes/bsnes $@
