#!/bin/bash

doc_name="$1"

# use of 'open' below relevant on a Mac
pdflatex -halt-on-error "$doc_name.tex" && pdflatex -halt-on-error "$doc_name.tex" && open "$doc_name.pdf"
