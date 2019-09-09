build() {
    pushd $1
    pdflatex -interaction=nonstopmode -halt-on-error -output-directory=../_build $2
    popd
}

mkdir _build
build "linear_algebra" "linear_algebra_19.tex"
build "mathematical_analysis" "mathematical_analysis_19.tex"
