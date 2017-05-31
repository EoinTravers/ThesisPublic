#!/bin/bash

# Convert svg images to pdf
bash scripts/convert_svg.sh

# Build the Thesis.
xelatex Thesis
bibtex Thesis
xelatex Thesis
xelatex Thesis

# Hide the log.
mv "Thesis.log" ".logged"

# Clean up
rm Thesis.toc Thesis.out Thesis.lof Thesis.aux Thesis.blg Thesis.bbl
