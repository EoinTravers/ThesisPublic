
#alias inkscape='C:/Users/40027000/PortableApps/InkscapePortable/App/Inkscape/inkscape.exe'
if [ $# -eq 0 ]
then
    # Convert everything
    for f in *.svg; do
        inkscape $f --export-pdf `basename $f svg`pdf;
        # inkscape $f --export-pdf `basename $f svg`pdf;        
    done
else
    # Convert specified files
    for f in $@; do
        inkscape $f --export-pdf `basename $f svg`pdf;
        # inkscape $f --export-png `basename $f svg`png;
    done
fi


# for f in *.svg; do
#     IMC
# done

