#!/bin/sh
#made to make its all text work with vim
: ${VISUAL='vim'}
exec xterm -e $VISUAL ${1+"$@"}
