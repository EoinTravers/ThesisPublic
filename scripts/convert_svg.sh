#!/bin/bash

## For Windows
# alias inkscape='C:/Users/40027000/PortableApps/InkscapePortable/App/Inkscape/inkscape.exe'


if [ $# -eq 0 ]
then
    # Convert everything
    for f in  **/imgs/*.svg Appendices/imgs/reversals/*.svg; do
        echo $f
        o=$(echo $f | sed 's/\.svg//g')
        inkscape $f --export-pdf $o.pdf;
        # inkscape $f --export-png $o.png;        
    done
else
    # Convert specified files
    for f in $@; do
        o=$(echo $f | sed 's/\.svg//g')
        inkscape $f --export-pdf $o.pdf;
    done
fi


