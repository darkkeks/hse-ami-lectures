#!/bin/bash

build() {
    pushd $1
    latexmk -pdf -interaction=nonstopmode -halt-on-error $1.tex 
    cp *.pdf ../_build/
    latexmk -c
    popd
}

mkdir _build

build linear_algebra
build mathematical_analysis
