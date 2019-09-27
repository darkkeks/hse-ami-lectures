#!/bin/bash

build() {
    pushd $1
    latexmk -pdf -interaction=nonstopmode -halt-on-error $2.tex 
    latexmk -c
    popd
    mkdir -p _build/$1
    cp $1/$2.pdf _build/$1
}

mkdir _build

build linear_algebra linear_algebra

build mathematical_analysis mathematical_analysis
build mathematical_analysis/homework homework_1
build mathematical_analysis/homework homework_2

