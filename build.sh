#!/bin/sh

if [ "$#" -eq "0" ] ; then
    echo 'Example: ./build.sh v2'
    exit 0
fi

typst watch --root . -- "$1/ski_molina.typ"
